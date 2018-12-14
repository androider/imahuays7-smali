.class Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$3;
.super Ljava/lang/Object;
.source "QRCodeActivity1.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->a(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$b;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$b;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$3;->b:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$3;->a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionFailure(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 395
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$3;->a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$b;->a(Z)V

    return-void
.end method

.method public onRequestPermissionSuccess()V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$3;->a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$b;->a(Z)V

    return-void
.end method
