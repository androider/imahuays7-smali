.class final synthetic Lcom/mh/movie/core/mvp/ui/widget/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/aa;->a:Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/aa;->a:Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;

    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/ui/widget/VipDialogView;->b(Landroid/view/View;)V

    return-void
.end method
