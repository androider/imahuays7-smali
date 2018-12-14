.class final Lcom/mh/movie/core/mvp/ui/utils/a/a$1;
.super Ljava/lang/Object;
.source "CheckDomainUtils.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/utils/a/a;->b(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/a/a$1;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/mh/movie/core/mvp/ui/utils/a/a$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 147
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/a/a;->a()I

    move-result p1

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/utils/a/a$1;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 149
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/a/a;->a(I)I

    .line 152
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/a/a$1;->b:Landroid/content/Context;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/utils/a/a$1;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getDomainModel(Landroid/content/Context;)Lcom/mh/movie/core/mvp/model/entity/Domain;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/Domain;->getDOMAIN_URL()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mh/movie/core/mvp/ui/utils/a/a;->c(Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0

    .line 159
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/a/a$1;->b:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/mh/movie/core/mvp/ui/utils/a/a;->a(Landroid/content/Context;Lokhttp3/Response;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 163
    invoke-virtual {p0, p1, p1}, Lcom/mh/movie/core/mvp/ui/utils/a/a$1;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V

    :goto_0
    return-void
.end method
