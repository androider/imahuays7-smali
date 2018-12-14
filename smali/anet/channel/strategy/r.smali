.class Lanet/channel/strategy/r;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lanet/channel/strategy/j;


# direct methods
.method constructor <init>(Lanet/channel/strategy/j;Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lanet/channel/strategy/r;->b:Lanet/channel/strategy/j;

    iput-object p2, p0, Lanet/channel/strategy/r;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 102
    :try_start_0
    invoke-static {}, Lanet/channel/strategy/z;->b()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 106
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    .line 107
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 108
    iget-object v4, p0, Lanet/channel/strategy/r;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lanet/channel/strategy/j;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lanet/channel/strategy/j;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 111
    iget-object v4, p0, Lanet/channel/strategy/r;->b:Lanet/channel/strategy/j;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lanet/channel/strategy/j;->a(Lanet/channel/strategy/j;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return-void
.end method
