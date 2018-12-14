.class Lcom/flyco/dialog/widget/base/BaseDialog$3;
.super Ljava/lang/Object;
.source "BaseDialog.java"

# interfaces
.implements Lcom/flyco/animation/BaseAnimatorSet$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyco/dialog/widget/base/BaseDialog;->dismiss()V
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

    .line 241
    iput-object p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog$3;->this$0:Lcom/flyco/dialog/widget/base/BaseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 259
    iget-object p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog$3;->this$0:Lcom/flyco/dialog/widget/base/BaseDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/flyco/dialog/widget/base/BaseDialog;->access$202(Lcom/flyco/dialog/widget/base/BaseDialog;Z)Z

    .line 260
    iget-object p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog$3;->this$0:Lcom/flyco/dialog/widget/base/BaseDialog;

    invoke-virtual {p1}, Lcom/flyco/dialog/widget/base/BaseDialog;->superDismiss()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 253
    iget-object p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog$3;->this$0:Lcom/flyco/dialog/widget/base/BaseDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/flyco/dialog/widget/base/BaseDialog;->access$202(Lcom/flyco/dialog/widget/base/BaseDialog;Z)Z

    .line 254
    iget-object p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog$3;->this$0:Lcom/flyco/dialog/widget/base/BaseDialog;

    invoke-virtual {p1}, Lcom/flyco/dialog/widget/base/BaseDialog;->superDismiss()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 244
    iget-object p1, p0, Lcom/flyco/dialog/widget/base/BaseDialog$3;->this$0:Lcom/flyco/dialog/widget/base/BaseDialog;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/flyco/dialog/widget/base/BaseDialog;->access$202(Lcom/flyco/dialog/widget/base/BaseDialog;Z)Z

    return-void
.end method
