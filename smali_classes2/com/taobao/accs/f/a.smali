.class Lcom/taobao/accs/f/a;
.super Ljava/util/LinkedHashMap;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/Integer;",
        "Lcom/taobao/accs/data/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/accs/f/c;


# direct methods
.method constructor <init>(Lcom/taobao/accs/f/c;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/taobao/accs/f/a;->a:Lcom/taobao/accs/f/c;

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
            "Ljava/lang/Integer;",
            "Lcom/taobao/accs/data/Message;",
            ">;)Z"
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lcom/taobao/accs/f/a;->size()I

    move-result p1

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
