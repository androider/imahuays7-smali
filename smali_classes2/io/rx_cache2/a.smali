.class public final Lio/rx_cache2/a;
.super Ljava/lang/Object;
.source "ConfigProvider.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Boolean;

.field private final c:Ljava/lang/Long;

.field private final d:Z

.field private final e:Z

.field private final f:Z

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Lio/reactivex/Observable;

.field private final j:Lio/rx_cache2/h;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Lio/reactivex/Observable;Lio/rx_cache2/h;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lio/rx_cache2/a;->a:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lio/rx_cache2/a;->b:Ljava/lang/Boolean;

    .line 39
    iput-object p3, p0, Lio/rx_cache2/a;->c:Ljava/lang/Long;

    .line 40
    iput-boolean p4, p0, Lio/rx_cache2/a;->d:Z

    .line 41
    iput-boolean p5, p0, Lio/rx_cache2/a;->e:Z

    .line 42
    iput-boolean p6, p0, Lio/rx_cache2/a;->f:Z

    .line 43
    iput-object p7, p0, Lio/rx_cache2/a;->g:Ljava/lang/String;

    .line 44
    iput-object p8, p0, Lio/rx_cache2/a;->h:Ljava/lang/String;

    .line 45
    iput-object p9, p0, Lio/rx_cache2/a;->i:Lio/reactivex/Observable;

    .line 46
    iput-object p10, p0, Lio/rx_cache2/a;->j:Lio/rx_cache2/h;

    .line 47
    invoke-direct {p0}, Lio/rx_cache2/a;->k()V

    return-void
.end method

.method private k()V
    .locals 2

    .line 91
    invoke-virtual {p0}, Lio/rx_cache2/a;->g()Lio/rx_cache2/h;

    move-result-object v0

    instance-of v0, v0, Lio/rx_cache2/g;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lio/rx_cache2/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/rx_cache2/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " EvictDynamicKeyGroup was provided but not was provided any Group"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_0
    invoke-virtual {p0}, Lio/rx_cache2/a;->g()Lio/rx_cache2/h;

    move-result-object v0

    instance-of v0, v0, Lio/rx_cache2/f;

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lio/rx_cache2/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/rx_cache2/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " EvictDynamicKey was provided but not was provided any DynamicKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lio/rx_cache2/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lio/rx_cache2/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lio/rx_cache2/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/Long;
    .locals 1

    .line 63
    iget-object v0, p0, Lio/rx_cache2/a;->c:Ljava/lang/Long;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lio/rx_cache2/a;->d:Z

    return v0
.end method

.method public f()Lio/reactivex/Observable;
    .locals 1

    .line 71
    iget-object v0, p0, Lio/rx_cache2/a;->i:Lio/reactivex/Observable;

    return-object v0
.end method

.method public g()Lio/rx_cache2/h;
    .locals 1

    .line 75
    iget-object v0, p0, Lio/rx_cache2/a;->j:Lio/rx_cache2/h;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lio/rx_cache2/a;->e:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lio/rx_cache2/a;->f:Z

    return v0
.end method

.method public j()Ljava/lang/Boolean;
    .locals 1

    .line 87
    iget-object v0, p0, Lio/rx_cache2/a;->b:Ljava/lang/Boolean;

    return-object v0
.end method
