.class public Lanet/channel/strategy/ConnProtocol;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final HTTP:Lanet/channel/strategy/ConnProtocol;

.field public static final HTTPS:Lanet/channel/strategy/ConnProtocol;

.field private static b:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/ConnProtocol;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x30e4ed8b361b2849L


# instance fields
.field final a:I

.field public final l7:Z

.field public final name:Ljava/lang/String;

.field public final protocol:Ljava/lang/String;

.field public final publicKey:Ljava/lang/String;

.field public final rtt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lanet/channel/strategy/ConnProtocol;->b:Ljava/util/Map;

    const-string v0, "http"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 16
    invoke-static {v0, v2, v2, v1}, Lanet/channel/strategy/ConnProtocol;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lanet/channel/strategy/ConnProtocol;

    move-result-object v0

    sput-object v0, Lanet/channel/strategy/ConnProtocol;->HTTP:Lanet/channel/strategy/ConnProtocol;

    const-string v0, "https"

    .line 17
    invoke-static {v0, v2, v2, v1}, Lanet/channel/strategy/ConnProtocol;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lanet/channel/strategy/ConnProtocol;

    move-result-object v0

    sput-object v0, Lanet/channel/strategy/ConnProtocol;->HTTPS:Lanet/channel/strategy/ConnProtocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lanet/channel/strategy/ConnProtocol;->name:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lanet/channel/strategy/ConnProtocol;->rtt:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lanet/channel/strategy/ConnProtocol;->publicKey:Ljava/lang/String;

    .line 54
    iput-boolean p5, p0, Lanet/channel/strategy/ConnProtocol;->l7:Z

    const-string p1, "http"

    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "https"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput p1, p0, Lanet/channel/strategy/ConnProtocol;->a:I

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 59
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "_"

    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p0, "_0rtt"

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p0, "_"

    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2

    const-string p0, "_l7"

    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lanet/channel/strategy/y$a;)Lanet/channel/strategy/ConnProtocol;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 30
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/y$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lanet/channel/strategy/y$a;->g:Ljava/lang/String;

    iget-object v2, p0, Lanet/channel/strategy/y$a;->j:Ljava/lang/String;

    iget-boolean p0, p0, Lanet/channel/strategy/y$a;->i:Z

    invoke-static {v0, v1, v2, p0}, Lanet/channel/strategy/ConnProtocol;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lanet/channel/strategy/ConnProtocol;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lanet/channel/strategy/ConnProtocol;
    .locals 9

    .line 34
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 38
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lanet/channel/strategy/ConnProtocol;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 39
    sget-object v7, Lanet/channel/strategy/ConnProtocol;->b:Ljava/util/Map;

    monitor-enter v7

    .line 40
    :try_start_0
    sget-object v0, Lanet/channel/strategy/ConnProtocol;->b:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    sget-object p0, Lanet/channel/strategy/ConnProtocol;->b:Ljava/util/Map;

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lanet/channel/strategy/ConnProtocol;

    monitor-exit v7

    return-object p0

    .line 43
    :cond_1
    new-instance v8, Lanet/channel/strategy/ConnProtocol;

    move-object v0, v8

    move-object v1, v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lanet/channel/strategy/ConnProtocol;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 44
    sget-object p0, Lanet/channel/strategy/ConnProtocol;->b:Ljava/util/Map;

    invoke-interface {p0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v8

    :catchall_0
    move-exception p0

    .line 46
    monitor-exit v7

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 89
    instance-of v0, p1, Lanet/channel/strategy/ConnProtocol;

    if-nez v0, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lanet/channel/strategy/ConnProtocol;->name:Ljava/lang/String;

    check-cast p1, Lanet/channel/strategy/ConnProtocol;

    iget-object p1, p1, Lanet/channel/strategy/ConnProtocol;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 99
    iget-object v0, p0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    .line 100
    iget-object v0, p0, Lanet/channel/strategy/ConnProtocol;->rtt:Ljava/lang/String;

    if-eqz v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 101
    iget-object v0, p0, Lanet/channel/strategy/ConnProtocol;->rtt:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 103
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/ConnProtocol;->publicKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 104
    iget-object v0, p0, Lanet/channel/strategy/ConnProtocol;->publicKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    mul-int/lit8 v1, v1, 0x1f

    .line 106
    iget-boolean v0, p0, Lanet/channel/strategy/ConnProtocol;->l7:Z

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lanet/channel/strategy/ConnProtocol;->name:Ljava/lang/String;

    return-object v0
.end method
