.class Lcom/taobao/accs/d/a$a;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:[Ljava/lang/Object;

.field final synthetic c:Lcom/taobao/accs/d/a;


# direct methods
.method private constructor <init>(Lcom/taobao/accs/d/a;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/taobao/accs/d/a$a;->c:Lcom/taobao/accs/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p2, p0, Lcom/taobao/accs/d/a$a;->a:Ljava/lang/String;

    .line 232
    iput-object p3, p0, Lcom/taobao/accs/d/a$a;->b:[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/accs/d/a;Ljava/lang/String;[Ljava/lang/Object;Lcom/taobao/accs/d/a$1;)V
    .locals 0

    .line 229
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/accs/d/a$a;-><init>(Lcom/taobao/accs/d/a;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
