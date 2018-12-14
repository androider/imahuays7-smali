.class Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$1;
.super Ljava/lang/Object;
.source "QRCodeFragment.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->a(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 180
    new-instance v0, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;-><init>()V

    const-string v1, "invitation"

    .line 181
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->setType(Ljava/lang/String;)V

    const-string v1, "startInvitation"

    .line 182
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->setSecondaryType(Ljava/lang/String;)V

    .line 183
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b(Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;)V

    .line 184
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment$1;->a:Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/fragment/QRCodeFragment;->e()V

    return-void
.end method
