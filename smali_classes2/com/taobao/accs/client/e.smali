.class Lcom/taobao/accs/client/e;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/client/a;


# direct methods
.method constructor <init>(Lcom/taobao/accs/client/a;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/taobao/accs/client/e;->a:Lcom/taobao/accs/client/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 84
    sget-object v0, Lcom/taobao/accs/client/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/b/c;->a(Landroid/content/Context;)V

    .line 85
    sget-object v0, Lcom/taobao/accs/client/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/b;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/client/a;->c:Ljava/lang/String;

    return-void
.end method
