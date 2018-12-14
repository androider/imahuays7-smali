.class public final Lanet/channel/b;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/b$a;
    }
.end annotation


# static fields
.field public static final a:Lanet/channel/b;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lanet/channel/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lanet/channel/entity/ENV;

.field private f:Lanet/channel/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lanet/channel/b;->b:Ljava/util/Map;

    .line 21
    new-instance v0, Lanet/channel/b$a;

    invoke-direct {v0}, Lanet/channel/b$a;-><init>()V

    const-string v1, "[default]"

    invoke-virtual {v0, v1}, Lanet/channel/b$a;->a(Ljava/lang/String;)Lanet/channel/b$a;

    move-result-object v0

    const-string v1, "[default]"

    invoke-virtual {v0, v1}, Lanet/channel/b$a;->b(Ljava/lang/String;)Lanet/channel/b$a;

    move-result-object v0

    sget-object v1, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    invoke-virtual {v0, v1}, Lanet/channel/b$a;->a(Lanet/channel/entity/ENV;)Lanet/channel/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lanet/channel/b$a;->a()Lanet/channel/b;

    move-result-object v0

    sput-object v0, Lanet/channel/b;->a:Lanet/channel/b;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    iput-object v0, p0, Lanet/channel/b;->e:Lanet/channel/entity/ENV;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lanet/channel/b;
    .locals 2

    .line 36
    sget-object v0, Lanet/channel/b;->b:Ljava/util/Map;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lanet/channel/b;->b:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lanet/channel/b;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 38
    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lanet/channel/b;)Lanet/channel/entity/ENV;
    .locals 0

    .line 18
    iget-object p0, p0, Lanet/channel/b;->e:Lanet/channel/entity/ENV;

    return-object p0
.end method

.method static synthetic a(Lanet/channel/b;Lanet/channel/entity/ENV;)Lanet/channel/entity/ENV;
    .locals 0

    .line 18
    iput-object p1, p0, Lanet/channel/b;->e:Lanet/channel/entity/ENV;

    return-object p1
.end method

.method static synthetic a(Lanet/channel/b;Lanet/channel/f/a;)Lanet/channel/f/a;
    .locals 0

    .line 18
    iput-object p1, p0, Lanet/channel/b;->f:Lanet/channel/f/a;

    return-object p1
.end method

.method static synthetic a(Lanet/channel/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lanet/channel/b;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lanet/channel/b;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lanet/channel/b;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lanet/channel/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lanet/channel/b;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lanet/channel/b;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lanet/channel/b;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d()Ljava/util/Map;
    .locals 1

    .line 18
    sget-object v0, Lanet/channel/b;->b:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lanet/channel/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lanet/channel/entity/ENV;
    .locals 1

    .line 61
    iget-object v0, p0, Lanet/channel/b;->e:Lanet/channel/entity/ENV;

    return-object v0
.end method

.method public c()Lanet/channel/f/a;
    .locals 1

    .line 65
    iget-object v0, p0, Lanet/channel/b;->f:Lanet/channel/f/a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lanet/channel/b;->c:Ljava/lang/String;

    return-object v0
.end method
