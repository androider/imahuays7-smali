.class final synthetic Lcom/mh/movie/core/mvp/ui/fragment/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;

.field private final b:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$a;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/ah;->a:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/fragment/ah;->b:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/ah;->a:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/fragment/ah;->b:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$a;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->b(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$a;)V

    return-void
.end method
