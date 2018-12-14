.class Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$3;
.super Ljava/lang/Object;
.source "QRCodeFragment.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils$RequestPermission;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->a(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$b;

.field final synthetic b:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$b;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$3;->b:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$3;->a:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$b;

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

    .line 349
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$3;->a:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$b;->a(Z)V

    return-void
.end method

.method public onRequestPermissionSuccess()V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$3;->a:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$b;->a(Z)V

    return-void
.end method
