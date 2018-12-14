.class public Lcom/jess/arms/b/b/n;
.super Ljava/lang/Object;
.source "GlobalConfigModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jess/arms/b/b/n$a;
    }
.end annotation


# instance fields
.field private a:Lokhttp3/HttpUrl;

.field private b:Lcom/jess/arms/http/a;

.field private c:Lcom/jess/arms/http/imageloader/a;

.field private d:Lcom/jess/arms/http/b;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;

.field private g:Ljava/io/File;

.field private h:Lcom/jess/arms/b/b/f$c;

.field private i:Lcom/jess/arms/b/b/f$b;

.field private j:Lcom/jess/arms/b/b/f$d;

.field private k:Lcom/jess/arms/b/b/a$a;

.field private l:Lcom/jess/arms/http/log/RequestInterceptor$Level;

.field private m:Lcom/jess/arms/http/log/b;

.field private n:Lcom/jess/arms/integration/cache/Cache$Factory;


# direct methods
.method private constructor <init>(Lcom/jess/arms/b/b/n$a;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {p1}, Lcom/jess/arms/b/b/n$a;->a(Lcom/jess/arms/b/b/n$a;)Lokhttp3/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/b/b/n;->a:Lokhttp3/HttpUrl;

    .line 78
    invoke-static {p1}, Lcom/jess/arms/b/b/n$a;->b(Lcom/jess/arms/b/b/n$a;)Lcom/jess/arms/http/a;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/b/b/n;->b:Lcom/jess/arms/http/a;

    .line 79
    invoke-static {p1}, Lcom/jess/arms/b/b/n$a;->c(Lcom/jess/arms/b/b/n$a;)Lcom/jess/arms/http/imageloader/a;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/b/b/n;->c:Lcom/jess/arms/http/imageloader/a;

    .line 80
    invoke-static {p1}, Lcom/jess/arms/b/b/n$a;->d(Lcom/jess/arms/b/b/n$a;)Lcom/jess/arms/http/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/b/b/n;->d:Lcom/jess/arms/http/b;

    .line 81
    invoke-static {p1}, Lcom/jess/arms/b/b/n$a;->e(Lcom/jess/arms/b/b/n$a;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/b/b/n;->e:Ljava/util/List;

    .line 82
    invoke-static {p1}, Lcom/jess/arms/b/b/n$a;->f(Lcom/jess/arms/b/b/n$a;)Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/b/b/n;->f:Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;

    .line 83
    invoke-static {p1}, Lcom/jess/arms/b/b/n$a;->g(Lcom/jess/arms/b/b/n$a;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/b/b/n;->g:Ljava/io/File;

    .line 84
    invoke-static {p1}, Lcom/jess/arms/b/b/n$a;->h(Lcom/jess/arms/b/b/n$a;)Lcom/jess/arms/b/b/f$c;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/b/b/n;->h:Lcom/jess/arms/b/b/f$c;

    .line 85
    invoke-static {p1}, Lcom/jess/arms/b/b/n$a;->i(Lcom/jess/arms/b/b/n$a;)Lcom/jess/arms/b/b/f$b;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/b/b/n;->i:Lcom/jess/arms/b/b/f$b;

    .line 86
    invoke-static {p1}, Lcom/jess/arms/b/b/n$a;->j(Lcom/jess/arms/b/b/n$a;)Lcom/jess/arms/b/b/f$d;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/b/b/n;->j:Lcom/jess/arms/b/b/f$d;

    .line 87
    invoke-static {p1}, Lcom/jess/arms/b/b/n$a;->k(Lcom/jess/arms/b/b/n$a;)Lcom/jess/arms/b/b/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/b/b/n;->k:Lcom/jess/arms/b/b/a$a;

    .line 88
    invoke-static {p1}, Lcom/jess/arms/b/b/n$a;->l(Lcom/jess/arms/b/b/n$a;)Lcom/jess/arms/http/log/RequestInterceptor$Level;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/b/b/n;->l:Lcom/jess/arms/http/log/RequestInterceptor$Level;

    .line 89
    invoke-static {p1}, Lcom/jess/arms/b/b/n$a;->m(Lcom/jess/arms/b/b/n$a;)Lcom/jess/arms/http/log/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jess/arms/b/b/n;->m:Lcom/jess/arms/http/log/b;

    .line 90
    invoke-static {p1}, Lcom/jess/arms/b/b/n$a;->n(Lcom/jess/arms/b/b/n$a;)Lcom/jess/arms/integration/cache/Cache$Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/jess/arms/b/b/n;->n:Lcom/jess/arms/integration/cache/Cache$Factory;

    return-void
.end method

.method synthetic constructor <init>(Lcom/jess/arms/b/b/n$a;Lcom/jess/arms/b/b/n$1;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/jess/arms/b/b/n;-><init>(Lcom/jess/arms/b/b/n$a;)V

    return-void
.end method

.method public static a()Lcom/jess/arms/b/b/n$a;
    .locals 2

    .line 94
    new-instance v0, Lcom/jess/arms/b/b/n$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jess/arms/b/b/n$a;-><init>(Lcom/jess/arms/b/b/n$1;)V

    return-object v0
.end method


# virtual methods
.method a(Landroid/app/Application;)Ljava/io/File;
    .locals 1
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/jess/arms/b/b/n;->g:Ljava/io/File;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/jess/arms/c/d;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jess/arms/b/b/n;->g:Ljava/io/File;

    :goto_0
    return-object p1
.end method

.method b(Landroid/app/Application;)Lcom/jess/arms/integration/cache/Cache$Factory;
    .locals 1
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/jess/arms/b/b/n;->n:Lcom/jess/arms/integration/cache/Cache$Factory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jess/arms/b/b/n$1;

    invoke-direct {v0, p0, p1}, Lcom/jess/arms/b/b/n$1;-><init>(Lcom/jess/arms/b/b/n;Landroid/app/Application;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jess/arms/b/b/n;->n:Lcom/jess/arms/integration/cache/Cache$Factory;

    :goto_0
    return-object v0
.end method

.method b()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/jess/arms/b/b/n;->e:Ljava/util/List;

    return-object v0
.end method

.method c()Lokhttp3/HttpUrl;
    .locals 1
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/jess/arms/b/b/n;->b:Lcom/jess/arms/http/a;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/jess/arms/b/b/n;->b:Lcom/jess/arms/http/a;

    invoke-interface {v0}, Lcom/jess/arms/http/a;->a()Lokhttp3/HttpUrl;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/jess/arms/b/b/n;->a:Lokhttp3/HttpUrl;

    if-nez v0, :cond_1

    const-string v0, "https://api.github.com/"

    invoke-static {v0}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jess/arms/b/b/n;->a:Lokhttp3/HttpUrl;

    :goto_0
    return-object v0
.end method

.method d()Lcom/jess/arms/http/imageloader/a;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/jess/arms/b/b/n;->c:Lcom/jess/arms/http/imageloader/a;

    return-object v0
.end method

.method e()Lcom/jess/arms/http/b;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/jess/arms/b/b/n;->d:Lcom/jess/arms/http/b;

    return-object v0
.end method

.method f()Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;
    .locals 1
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/jess/arms/b/b/n;->f:Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;

    if-nez v0, :cond_0

    sget-object v0, Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;->EMPTY:Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jess/arms/b/b/n;->f:Lme/jessyan/rxerrorhandler/handler/listener/ResponseErrorListener;

    :goto_0
    return-object v0
.end method

.method g()Lcom/jess/arms/b/b/f$c;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/jess/arms/b/b/n;->h:Lcom/jess/arms/b/b/f$c;

    return-object v0
.end method

.method h()Lcom/jess/arms/b/b/f$b;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/jess/arms/b/b/n;->i:Lcom/jess/arms/b/b/f$b;

    return-object v0
.end method

.method i()Lcom/jess/arms/b/b/f$d;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/jess/arms/b/b/n;->j:Lcom/jess/arms/b/b/f$d;

    return-object v0
.end method

.method j()Lcom/jess/arms/b/b/a$a;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/jess/arms/b/b/n;->k:Lcom/jess/arms/b/b/a$a;

    return-object v0
.end method

.method k()Lcom/jess/arms/http/log/RequestInterceptor$Level;
    .locals 1
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/jess/arms/b/b/n;->l:Lcom/jess/arms/http/log/RequestInterceptor$Level;

    if-nez v0, :cond_0

    sget-object v0, Lcom/jess/arms/http/log/RequestInterceptor$Level;->ALL:Lcom/jess/arms/http/log/RequestInterceptor$Level;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jess/arms/b/b/n;->l:Lcom/jess/arms/http/log/RequestInterceptor$Level;

    :goto_0
    return-object v0
.end method

.method l()Lcom/jess/arms/http/log/b;
    .locals 1
    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/jess/arms/b/b/n;->m:Lcom/jess/arms/http/log/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jess/arms/http/log/a;

    invoke-direct {v0}, Lcom/jess/arms/http/log/a;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jess/arms/b/b/n;->m:Lcom/jess/arms/http/log/b;

    :goto_0
    return-object v0
.end method
