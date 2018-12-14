.class final synthetic Lcom/mh/movie/core/mvp/ui/activity/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;

.field private final b:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$a;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/ao;->a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/ao;->b:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/ao;->a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/activity/ao;->b:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$a;

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->b(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$a;)V

    return-void
.end method
