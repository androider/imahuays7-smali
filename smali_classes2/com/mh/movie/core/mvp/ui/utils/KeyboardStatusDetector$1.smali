.class Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector$1;
.super Ljava/lang/Object;
.source "KeyboardStatusDetector.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;->registerView(Landroid/view/View;)Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;Landroid/view/View;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector$1;->this$0:Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 49
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector$1;->val$v:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 51
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector$1;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    sub-int/2addr v1, v2

    const/16 v0, 0x64

    if-le v1, v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector$1;->this$0:Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;

    iget-boolean v0, v0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;->keyboardVisible:Z

    if-nez v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector$1;->this$0:Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;->keyboardVisible:Z

    .line 55
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector$1;->this$0:Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;->access$000(Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;)Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector$KeyboardVisibilityListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector$1;->this$0:Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;->access$000(Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;)Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector$KeyboardVisibilityListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector$KeyboardVisibilityListener;->onVisibilityChanged(Z)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector$1;->this$0:Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;

    iget-boolean v0, v0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;->keyboardVisible:Z

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector$1;->this$0:Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;->keyboardVisible:Z

    .line 62
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector$1;->this$0:Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;->access$000(Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;)Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector$KeyboardVisibilityListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector$1;->this$0:Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;->access$000(Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector;)Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector$KeyboardVisibilityListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/KeyboardStatusDetector$KeyboardVisibilityListener;->onVisibilityChanged(Z)V

    :cond_1
    :goto_0
    return-void
.end method
