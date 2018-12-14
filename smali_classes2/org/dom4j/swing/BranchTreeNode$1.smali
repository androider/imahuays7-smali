.class Lorg/dom4j/swing/BranchTreeNode$1;
.super Ljava/lang/Object;
.source "BranchTreeNode.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/dom4j/swing/BranchTreeNode;->children()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Ljavax/swing/tree/TreeNode;",
        ">;"
    }
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lorg/dom4j/swing/BranchTreeNode;


# direct methods
.method constructor <init>(Lorg/dom4j/swing/BranchTreeNode;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/dom4j/swing/BranchTreeNode$1;->this$0:Lorg/dom4j/swing/BranchTreeNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 50
    iput p1, p0, Lorg/dom4j/swing/BranchTreeNode$1;->index:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 3

    .line 53
    iget v0, p0, Lorg/dom4j/swing/BranchTreeNode$1;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lorg/dom4j/swing/BranchTreeNode$1;->this$0:Lorg/dom4j/swing/BranchTreeNode;

    invoke-virtual {v2}, Lorg/dom4j/swing/BranchTreeNode;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/dom4j/swing/BranchTreeNode$1;->nextElement()Ljavax/swing/tree/TreeNode;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljavax/swing/tree/TreeNode;
    .locals 2

    .line 57
    iget-object v0, p0, Lorg/dom4j/swing/BranchTreeNode$1;->this$0:Lorg/dom4j/swing/BranchTreeNode;

    iget v1, p0, Lorg/dom4j/swing/BranchTreeNode$1;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/dom4j/swing/BranchTreeNode$1;->index:I

    invoke-virtual {v0, v1}, Lorg/dom4j/swing/BranchTreeNode;->getChildAt(I)Ljavax/swing/tree/TreeNode;

    move-result-object v0

    return-object v0
.end method
