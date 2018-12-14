.class Lcom/taobao/accs/data/a;
.super Ljava/util/LinkedHashMap;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/accs/data/b;


# direct methods
.method constructor <init>(Lcom/taobao/accs/data/b;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/taobao/accs/data/a;->a:Lcom/taobao/accs/data/b;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/taobao/accs/data/a;->size()I

    move-result p1

    const/16 v0, 0x32

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
