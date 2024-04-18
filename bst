class TreeNode {
    int key;
    TreeNode left, right;

    public TreeNode(int item) {
        key = item;
        left = right = null;
    }
}

class BinaryTree {
    TreeNode root;

    public BinaryTree() {
        root = null;
    }

  
    public void insert(int key) {
        root = insertRecursive(root, key);
    }


    private TreeNode insertRecursive(TreeNode root, int key) {
        if (root == null) {
            root = new TreeNode(key);
            return root;
        }

        if (key < root.key) {
            root.left = insertRecursive(root.left, key);
        } else if (key > root.key) {
            root.right = insertRecursive(root.right, key);
        }

        return root;
    }

    public boolean search(int key) {
        return searchRecursive(root, key);
    }

    private boolean searchRecursive(TreeNode root, int key) {
        if (root == null || root.key == key) {
            return root != null;
        }

        if (key < root.key) {
            return searchRecursive(root.left, key);
        } else {
            return searchRecursive(root.right, key);
        }
    }

     static void main(String[] args) {
        BinaryTree tree = new BinaryTree();

        
        tree.insert(505);
        tree.insert(306);
        tree.insert(209);
        tree.insert(407);
        tree.insert(708);
        tree.insert(600);
        tree.insert(804);

        int keyToSearch = 600;
        if (tree.search(keyToSearch)) {
            System.out.println("Key " + keyToSearch + " found in the binary tree.");
        } else {
            System.out.println("Key " + keyToSearch + " not found in the binary tree.");
        }

        keyToSearch = 306;
        if (tree.search(keyToSearch)) {
            System.out.println("Key " + keyToSearch + " found in the binary tree.");
        } else {
            System.out.println("Key " + keyToSearch + " not found in the binary tree.");
        }
    }
}
