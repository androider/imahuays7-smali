.class Lcom/flyco/dialog/widget/ActionSheetDialog$2;
.super Ljava/lang/Object;
.source "ActionSheetDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 212
    iput-object p1, p0, Lcom/flyco/dialog/widget/ActionSheetDialog$2;->this$0:Lcom/flyco/dialog/widget/ActionSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog$2;->this$0:Lcom/flyco/dialog/widget/ActionSheetDialog;

    invoke-static {v0}, Lcom/flyco/dialog/widget/ActionSheetDialog;->access$000(Lcom/flyco/dialog/widget/ActionSheetDialog;)Lcom/flyco/dialog/listener/OnOperItemClickL;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/flyco/dialog/widget/ActionSheetDialog$2;->this$0:Lcom/flyco/dialog/widget/ActionSheetDialog;

    invoke-static {v0}, Lcom/flyco/dialog/widget/ActionSheetDialog;->access$000(Lcom/flyco/dialog/widget/ActionSheetDialog;)Lcom/flyco/dialog/listener/OnOperItemClickL;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/flyco/dialog/listener/OnOperItemClickL;->onOperItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method
