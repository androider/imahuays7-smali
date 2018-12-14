.class Lcom/flyco/dialog/widget/base/BottomTopBaseDialog$2;
.super Ljava/lang/Object;
.source "BottomTopBaseDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->dismissWithAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;


# direct methods
.method constructor <init>(Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog$2;->this$0:Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 88
    iget-object p1, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog$2;->this$0:Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mIsInnerDismissAnim:Z

    .line 89
    iget-object p1, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog$2;->this$0:Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;

    invoke-virtual {p1}, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->superDismiss()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 78
    iget-object p1, p0, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog$2;->this$0:Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/flyco/dialog/widget/base/BottomTopBaseDialog;->mIsInnerDismissAnim:Z

    return-void
.end method
