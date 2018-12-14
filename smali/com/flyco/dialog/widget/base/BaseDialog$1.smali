.class Lcom/flyco/dialog/widget/base/BaseDialog$1;
.super Ljava/lang/Object;
.source "BaseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyco/dialog/widget/base/BaseDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyco/dialog/widget/base/BaseDialog;


# direct methods
.method constructor <init>(Lcom/flyco/dialog/widget/base/BaseDialog;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog$1;->this$0:Lcom/flyco/dialog/widget/base/BaseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 133
    iget-object p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog$1;->this$0:Lcom/flyco/dialog/widget/base/BaseDialog;

    iget-boolean p1, p1, Lcom/flyco/dialog/widget/base/BaseDialog;->mCancel:Z

    if-eqz p1, :cond_0

    .line 134
    iget-object p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog$1;->this$0:Lcom/flyco/dialog/widget/base/BaseDialog;

    invoke-virtual {p1}, Lcom/flyco/dialog/widget/base/BaseDialog;->dismiss()V

    :cond_0
    return-void
.end method
