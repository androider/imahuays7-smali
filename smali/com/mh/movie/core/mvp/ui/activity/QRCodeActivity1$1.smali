.class Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$1;
.super Ljava/lang/Object;
.source "QRCodeActivity1.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->a(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$1;->a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 164
    new-instance v0, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;-><init>()V

    const-string v1, "invitation"

    .line 165
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->setType(Ljava/lang/String;)V

    const-string v1, "startInvitation"

    .line 166
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;->setSecondaryType(Ljava/lang/String;)V

    .line 167
    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b(Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;)V

    .line 168
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1$1;->a:Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/activity/QRCodeActivity1;->g()V

    return-void
.end method
