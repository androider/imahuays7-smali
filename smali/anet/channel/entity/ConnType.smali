.class public Lanet/channel/entity/ConnType;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/entity/ConnType$TypeLevel;
    }
.end annotation


# static fields
.field public static a:Lanet/channel/entity/ConnType;

.field public static b:Lanet/channel/entity/ConnType;

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lanet/channel/strategy/ConnProtocol;",
            "Lanet/channel/entity/ConnType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lanet/channel/entity/ConnType;

    const-string v1, "http"

    invoke-direct {v0, v1}, Lanet/channel/entity/ConnType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lanet/channel/entity/ConnType;->a:Lanet/channel/entity/ConnType;

    .line 35
    new-instance v0, Lanet/channel/entity/ConnType;

    const-string v1, "https"

    invoke-direct {v0, v1}, Lanet/channel/entity/ConnType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lanet/channel/entity/ConnType;->b:Lanet/channel/entity/ConnType;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lanet/channel/entity/ConnType;->c:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 40
    iput-object v0, p0, Lanet/channel/entity/ConnType;->f:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lanet/channel/entity/ConnType;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Lanet/channel/entity/ConnType;Lanet/channel/entity/ConnType;)I
    .locals 0

    .line 163
    invoke-direct {p0}, Lanet/channel/entity/ConnType;->e()I

    move-result p0

    invoke-direct {p1}, Lanet/channel/entity/ConnType;->e()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public static a(Lanet/channel/strategy/ConnProtocol;)Lanet/channel/entity/ConnType;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "http"

    .line 51
    iget-object v2, p0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    sget-object p0, Lanet/channel/entity/ConnType;->a:Lanet/channel/entity/ConnType;

    return-object p0

    :cond_1
    const-string v1, "https"

    .line 53
    iget-object v2, p0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    sget-object p0, Lanet/channel/entity/ConnType;->b:Lanet/channel/entity/ConnType;

    return-object p0

    .line 57
    :cond_2
    sget-object v1, Lanet/channel/entity/ConnType;->c:Ljava/util/Map;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v2, Lanet/channel/entity/ConnType;->c:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 59
    sget-object v0, Lanet/channel/entity/ConnType;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lanet/channel/entity/ConnType;

    monitor-exit v1

    return-object p0

    .line 62
    :cond_3
    new-instance v2, Lanet/channel/entity/ConnType;

    invoke-virtual {p0}, Lanet/channel/strategy/ConnProtocol;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lanet/channel/entity/ConnType;-><init>(Ljava/lang/String;)V

    .line 63
    iget-object v3, p0, Lanet/channel/strategy/ConnProtocol;->publicKey:Ljava/lang/String;

    iput-object v3, v2, Lanet/channel/entity/ConnType;->e:Ljava/lang/String;

    const-string v3, "http2"

    .line 65
    iget-object v4, p0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 66
    iget v3, v2, Lanet/channel/entity/ConnType;->d:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Lanet/channel/entity/ConnType;->d:I

    goto :goto_0

    :cond_4
    const-string v3, "spdy"

    .line 67
    iget-object v4, p0, Lanet/channel/strategy/ConnProtocol;->protocol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 68
    iget v3, v2, Lanet/channel/entity/ConnType;->d:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lanet/channel/entity/ConnType;->d:I

    .line 72
    :cond_5
    :goto_0
    iget v3, v2, Lanet/channel/entity/ConnType;->d:I

    if-nez v3, :cond_6

    .line 73
    monitor-exit v1

    return-object v0

    .line 76
    :cond_6
    iget-object v3, p0, Lanet/channel/strategy/ConnProtocol;->publicKey:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 77
    iget v3, v2, Lanet/channel/entity/ConnType;->d:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v2, Lanet/channel/entity/ConnType;->d:I

    const-string v3, "1rtt"

    .line 79
    iget-object v4, p0, Lanet/channel/strategy/ConnProtocol;->rtt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 80
    iget v0, v2, Lanet/channel/entity/ConnType;->d:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, v2, Lanet/channel/entity/ConnType;->d:I

    goto :goto_1

    :cond_7
    const-string v3, "0rtt"

    .line 81
    iget-object v4, p0, Lanet/channel/strategy/ConnProtocol;->rtt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 82
    iget v0, v2, Lanet/channel/entity/ConnType;->d:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, v2, Lanet/channel/entity/ConnType;->d:I

    .line 87
    :goto_1
    iget-boolean v0, p0, Lanet/channel/strategy/ConnProtocol;->l7:Z

    if-eqz v0, :cond_9

    .line 88
    iget v0, v2, Lanet/channel/entity/ConnType;->d:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, v2, Lanet/channel/entity/ConnType;->d:I

    goto :goto_2

    .line 84
    :cond_8
    monitor-exit v1

    return-object v0

    .line 92
    :cond_9
    :goto_2
    sget-object v0, Lanet/channel/entity/ConnType;->c:Ljava/util/Map;

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception p0

    .line 94
    monitor-exit v1

    throw p0
.end method

.method private e()I
    .locals 1

    .line 153
    invoke-virtual {p0}, Lanet/channel/entity/ConnType;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 155
    :cond_0
    iget v0, p0, Lanet/channel/entity/ConnType;->d:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 98
    iget v0, p0, Lanet/channel/entity/ConnType;->d:I

    return v0
.end method

.method public a(Z)I
    .locals 2

    const-string v0, "cdn"

    .line 104
    iget-object v1, p0, Lanet/channel/entity/ConnType;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 106
    :cond_0
    invoke-static {}, Lanet/channel/d;->d()Lanet/channel/entity/ENV;

    move-result-object v0

    sget-object v1, Lanet/channel/entity/ENV;->TEST:Lanet/channel/entity/ENV;

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "open"

    .line 108
    iget-object v1, p0, Lanet/channel/entity/ConnType;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const/16 p1, 0xb

    goto :goto_0

    :cond_2
    const/16 p1, 0xa

    goto :goto_0

    :cond_3
    const-string v0, "acs"

    .line 110
    iget-object v1, p0, Lanet/channel/entity/ConnType;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    const/4 p1, 0x4

    goto :goto_0

    :cond_4
    const/4 p1, 0x3

    goto :goto_0

    :cond_5
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public b()Z
    .locals 1

    .line 118
    sget-object v0, Lanet/channel/entity/ConnType;->a:Lanet/channel/entity/ConnType;

    invoke-virtual {p0, v0}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lanet/channel/entity/ConnType;->b:Lanet/channel/entity/ConnType;

    invoke-virtual {p0, v0}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public c()Z
    .locals 1

    .line 122
    sget-object v0, Lanet/channel/entity/ConnType;->b:Lanet/channel/entity/ConnType;

    invoke-virtual {p0, v0}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lanet/channel/entity/ConnType;->d:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public d()Lanet/channel/entity/ConnType$TypeLevel;
    .locals 1

    .line 145
    invoke-virtual {p0}, Lanet/channel/entity/ConnType;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lanet/channel/entity/ConnType$TypeLevel;->HTTP:Lanet/channel/entity/ConnType$TypeLevel;

    return-object v0

    .line 148
    :cond_0
    sget-object v0, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 132
    instance-of v1, p1, Lanet/channel/entity/ConnType;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 138
    :cond_1
    iget-object v2, p0, Lanet/channel/entity/ConnType;->f:Ljava/lang/String;

    check-cast p1, Lanet/channel/entity/ConnType;

    iget-object p1, p1, Lanet/channel/entity/ConnType;->f:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lanet/channel/entity/ConnType;->f:Ljava/lang/String;

    return-object v0
.end method
