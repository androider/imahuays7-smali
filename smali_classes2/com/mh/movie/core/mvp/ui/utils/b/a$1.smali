.class final Lcom/mh/movie/core/mvp/ui/utils/b/a$1;
.super Ljava/lang/Object;
.source "MobclickAgent.java"

# interfaces
.implements Lcom/mh/movie/core/mvp/ui/utils/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mh/movie/core/mvp/ui/utils/b/a;->a(Ljava/util/Map;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/utils/b/a$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 114
    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/MHApplication;->b:Z

    if-nez v0, :cond_0

    .line 115
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/MHApplication;->c()Lcom/mh/movie/core/mvp/ui/MHApplication;

    move-result-object v0

    sget-object v1, Lcom/mh/movie/core/mvp/ui/utils/b/a;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 121
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->a(Ljava/util/Map;)V

    .line 123
    iget-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/utils/b/a$1;->a:Z

    if-eqz p1, :cond_0

    .line 124
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->d()V

    :cond_0
    return-void
.end method
