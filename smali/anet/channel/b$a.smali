.class public Lanet/channel/b$a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lanet/channel/entity/ENV;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sget-object v0, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    iput-object v0, p0, Lanet/channel/b$a;->c:Lanet/channel/entity/ENV;

    return-void
.end method


# virtual methods
.method public a(Lanet/channel/entity/ENV;)Lanet/channel/b$a;
    .locals 0

    .line 91
    iput-object p1, p0, Lanet/channel/b$a;->c:Lanet/channel/entity/ENV;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lanet/channel/b$a;
    .locals 0

    .line 81
    iput-object p1, p0, Lanet/channel/b$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lanet/channel/b;
    .locals 7

    .line 106
    iget-object v0, p0, Lanet/channel/b$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "appkey can not be null or empty!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    invoke-static {}, Lanet/channel/b;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/b;

    .line 111
    invoke-static {v1}, Lanet/channel/b;->a(Lanet/channel/b;)Lanet/channel/entity/ENV;

    move-result-object v2

    iget-object v3, p0, Lanet/channel/b$a;->c:Lanet/channel/entity/ENV;

    if-ne v2, v3, :cond_1

    invoke-static {v1}, Lanet/channel/b;->b(Lanet/channel/b;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lanet/channel/b$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "awcn.Config"

    const-string v2, "duplicated config exist!"

    const/4 v3, 0x0

    const/4 v4, 0x4

    .line 112
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "appkey"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lanet/channel/b$a;->b:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "env"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lanet/channel/b$a;->c:Lanet/channel/entity/ENV;

    aput-object v6, v4, v5

    invoke-static {v0, v2, v3, v4}, Lanet/channel/h/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lanet/channel/b$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 114
    invoke-static {}, Lanet/channel/b;->d()Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 115
    :try_start_0
    invoke-static {}, Lanet/channel/b;->d()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lanet/channel/b$a;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_2
    :goto_0
    return-object v1

    .line 122
    :cond_3
    new-instance v0, Lanet/channel/b;

    invoke-direct {v0}, Lanet/channel/b;-><init>()V

    .line 123
    iget-object v1, p0, Lanet/channel/b$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lanet/channel/b;->a(Lanet/channel/b;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lanet/channel/b$a;->c:Lanet/channel/entity/ENV;

    invoke-static {v0, v1}, Lanet/channel/b;->a(Lanet/channel/b;Lanet/channel/entity/ENV;)Lanet/channel/entity/ENV;

    .line 126
    iget-object v1, p0, Lanet/channel/b$a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 127
    iget-object v1, p0, Lanet/channel/b$a;->b:Ljava/lang/String;

    const-string v2, "$"

    iget-object v3, p0, Lanet/channel/b$a;->c:Lanet/channel/entity/ENV;

    invoke-virtual {v3}, Lanet/channel/entity/ENV;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lanet/channel/h/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lanet/channel/b;->b(Lanet/channel/b;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 129
    :cond_4
    iget-object v1, p0, Lanet/channel/b$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lanet/channel/b;->b(Lanet/channel/b;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    :goto_1
    iget-object v1, p0, Lanet/channel/b$a;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 133
    invoke-static {}, Lanet/channel/f/e;->a()Lanet/channel/f/b;

    move-result-object v1

    iget-object v2, p0, Lanet/channel/b$a;->e:Ljava/lang/String;

    invoke-interface {v1, v2}, Lanet/channel/f/b;->b(Ljava/lang/String;)Lanet/channel/f/a;

    move-result-object v1

    invoke-static {v0, v1}, Lanet/channel/b;->a(Lanet/channel/b;Lanet/channel/f/a;)Lanet/channel/f/a;

    goto :goto_2

    .line 135
    :cond_5
    invoke-static {}, Lanet/channel/f/e;->a()Lanet/channel/f/b;

    move-result-object v1

    iget-object v2, p0, Lanet/channel/b$a;->d:Ljava/lang/String;

    invoke-interface {v1, v2}, Lanet/channel/f/b;->a(Ljava/lang/String;)Lanet/channel/f/a;

    move-result-object v1

    invoke-static {v0, v1}, Lanet/channel/b;->a(Lanet/channel/b;Lanet/channel/f/a;)Lanet/channel/f/a;

    .line 138
    :goto_2
    invoke-static {}, Lanet/channel/b;->d()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 139
    :try_start_1
    invoke-static {}, Lanet/channel/b;->d()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Lanet/channel/b;->c(Lanet/channel/b;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public b(Ljava/lang/String;)Lanet/channel/b$a;
    .locals 0

    .line 86
    iput-object p1, p0, Lanet/channel/b$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lanet/channel/b$a;
    .locals 0

    .line 96
    iput-object p1, p0, Lanet/channel/b$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lanet/channel/b$a;
    .locals 0

    .line 101
    iput-object p1, p0, Lanet/channel/b$a;->e:Ljava/lang/String;

    return-object p0
.end method
