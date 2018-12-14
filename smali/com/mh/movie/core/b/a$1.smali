.class Lcom/mh/movie/core/b/a$1;
.super Ljava/util/TimerTask;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/b/a;->a(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mh/movie/core/b/a;


# direct methods
.method constructor <init>(Lcom/mh/movie/core/b/a;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/mh/movie/core/b/a$1;->a:Lcom/mh/movie/core/b/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/mh/movie/core/b/a$1;->a:Lcom/mh/movie/core/b/a;

    invoke-static {v0}, Lcom/mh/movie/core/b/a;->a(Lcom/mh/movie/core/b/a;)Z

    return-void
.end method
