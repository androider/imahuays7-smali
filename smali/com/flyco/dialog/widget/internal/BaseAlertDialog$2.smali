.class Lcom/flyco/dialog/widget/internal/BaseAlertDialog$2;
.super Ljava/lang/Object;
.source "BaseAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->setUiBeforShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyco/dialog/widget/internal/BaseAlertDialog;


# direct methods
.method constructor <init>(Lcom/flyco/dialog/widget/internal/BaseAlertDialog;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog$2;->this$0:Lcom/flyco/dialog/widget/internal/BaseAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 161
    iget-object p1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog$2;->this$0:Lcom/flyco/dialog/widget/internal/BaseAlertDialog;

    iget-object p1, p1, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mOnBtnRightClickL:Lcom/flyco/dialog/listener/OnBtnClickL;

    if-eqz p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog$2;->this$0:Lcom/flyco/dialog/widget/internal/BaseAlertDialog;

    iget-object p1, p1, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->mOnBtnRightClickL:Lcom/flyco/dialog/listener/OnBtnClickL;

    invoke-interface {p1}, Lcom/flyco/dialog/listener/OnBtnClickL;->onBtnClick()V

    goto :goto_0

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/flyco/dialog/widget/internal/BaseAlertDialog$2;->this$0:Lcom/flyco/dialog/widget/internal/BaseAlertDialog;

    invoke-virtual {p1}, Lcom/flyco/dialog/widget/internal/BaseAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method
