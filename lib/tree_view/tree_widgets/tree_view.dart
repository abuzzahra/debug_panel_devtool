import 'package:flutter/material.dart';

import 'builder.dart';
import 'copy_tree_nodes.dart';
import 'primitives/tree_controller.dart';
import 'primitives/tree_node.dart';

// TODO (debug panel): Move these updated files to the
// `flutter_searchable_treeview` package.

/// Tree view with collapsible and expandable nodes.
class TreeView extends StatefulWidget {
  TreeView({
    super.key,
    required List<TreeNode> nodes,
    this.indent = 40,
    this.iconSize,
    this.treeController,
  }) : nodes = copyTreeNodes(nodes);

  /// List of root level tree nodes.
  final List<TreeNode> nodes;

  /// Horizontal indent between levels.
  final double? indent;

  /// Size of the expand/collapse icon.
  final double? iconSize;

  /// Tree controller to manage the tree state.
  final TreeController? treeController;

  @override
  _TreeViewState createState() => _TreeViewState();
}

class _TreeViewState extends State<TreeView> {
  late final TreeController _controller;

  @override
  void initState() {
    _controller = widget.treeController ?? TreeController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return buildNodes(
      widget.nodes,
      widget.indent,
      _controller,
      widget.iconSize,
    );
  }
}
