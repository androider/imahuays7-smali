.class Lcom/flyco/dialog/widget/internal/InternalBasePopup$1;
.super Ljava/lang/Object;
.source "InternalBasePopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyco/dialog/widget/internal/InternalBasePopup;->onViewCreated(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyco/dialog/widget/internal/InternalBasePopup;


# direct methods
.method constructor <init>(Lcom/flyco/dialog/widget/internal/InternalBasePopup;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/flyco/dialog/widget/internal/InternalBasePopup$1;->this$0:Lcom/flyco/dialog/widget/internal/InternalBasePopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/flyco/dialog/widget/internal/InternalBasePopup$1;->this$0:Lcom/flyco/dialog/widget/internal/InternalBasePopup;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/flyco/dialog/widget/internal/InternalBasePopup;->isLayoutObtain:Z

    .line 36
    iget-object v0, p0, Lcom/flyco/dialog/widget/internal/InternalBasePopup$1;->this$0:Lcom/flyco/dialog/widget/internal/InternalBasePopup;

    invoke-virtual {v0}, Lcom/flyco/dialog/widget/internal/InternalBasePopup;->onLayoutObtain()V

    return-void
.end method
