.class Lcom/flyco/dialog/widget/ActionSheetDialog$1;
.super Ljava/lang/Object;
.source "ActionSheetDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyco/dialog/widget/ActionSheetDialog;->setUiBeforShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyco/dialog/widget/ActionSheetDialog;


# direct methods
.method constructor <init>(Lcom/flyco/dialog/widget/ActionSheetDialog;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog$1;->this$0:Lcom/flyco/dialog/widget/ActionSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 192
    iget-object p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog$1;->this$0:Lcom/flyco/dialog/widget/ActionSheetDialog;

    invoke-virtual {p1}, Lcom/flyco/dialog/widget/ActionSheetDialog;->dismiss()V

    return-void
.end method
