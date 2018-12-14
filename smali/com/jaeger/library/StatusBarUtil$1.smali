.class final Lcom/jaeger/library/StatusBarUtil$1;
.super Ljava/lang/Object;
.source "StatusBarUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaeger/library/StatusBarUtil;->setColorForSwipeBack(Landroid/app/Activity;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/CoordinatorLayout;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/jaeger/library/StatusBarUtil$1;->val$coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/jaeger/library/StatusBarUtil$1;->val$coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout;->requestLayout()V

    return-void
.end method
