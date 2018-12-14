.class final Lcom/taobao/agoo/k;
.super Lcom/taobao/accs/d;
.source "Taobao"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/taobao/accs/c;

.field final synthetic c:Lcom/taobao/agoo/c;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/taobao/accs/c;Lcom/taobao/agoo/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/taobao/agoo/k;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/taobao/agoo/k;->b:Lcom/taobao/accs/c;

    iput-object p3, p0, Lcom/taobao/agoo/k;->c:Lcom/taobao/agoo/c;

    iput-object p4, p0, Lcom/taobao/agoo/k;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/taobao/agoo/k;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/taobao/accs/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 5

    const/4 p2, 0x0

    :try_start_0
    const-string v0, "TaobaoRegister"

    const-string v1, "onBindApp"

    const/4 v2, 0x2

    .line 124
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "errorCode"

    aput-object v3, v2, p2

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_6

    .line 127
    invoke-static {}, Lcom/taobao/agoo/e;->a()Lcom/taobao/agoo/a/b;

    move-result-object p1

    if-nez p1, :cond_0

    .line 128
    new-instance p1, Lcom/taobao/agoo/a/b;

    iget-object v0, p0, Lcom/taobao/agoo/k;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/taobao/agoo/a/b;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/taobao/agoo/e;->a(Lcom/taobao/agoo/a/b;)Lcom/taobao/agoo/a/b;

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/taobao/agoo/k;->b:Lcom/taobao/accs/c;

    iget-object v0, p0, Lcom/taobao/agoo/k;->a:Landroid/content/Context;

    const-string v1, "AgooDeviceCmd"

    invoke-static {}, Lcom/taobao/agoo/e;->a()Lcom/taobao/agoo/a/b;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/taobao/accs/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/taobao/accs/base/a;)V

    .line 133
    invoke-static {}, Lcom/taobao/agoo/e;->a()Lcom/taobao/agoo/a/b;

    sget-object p1, Lcom/taobao/agoo/a/b;->b:Lcom/taobao/agoo/a/a;

    iget-object v0, p0, Lcom/taobao/agoo/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/taobao/agoo/a/a;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "TaobaoRegister"

    const-string v0, "agoo aready Registered return "

    .line 134
    new-array v1, p2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object p1, p0, Lcom/taobao/agoo/k;->c:Lcom/taobao/agoo/c;

    if-eqz p1, :cond_1

    .line 136
    iget-object p1, p0, Lcom/taobao/agoo/k;->c:Lcom/taobao/agoo/c;

    iget-object v0, p0, Lcom/taobao/agoo/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/agoo/a/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/taobao/agoo/c;->a(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 141
    :cond_2
    iget-object p1, p0, Lcom/taobao/agoo/k;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/taobao/agoo/k;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/agoo/k;->e:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/taobao/agoo/a/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    if-nez p1, :cond_4

    .line 144
    iget-object p1, p0, Lcom/taobao/agoo/k;->c:Lcom/taobao/agoo/c;

    if-eqz p1, :cond_3

    .line 145
    iget-object p1, p0, Lcom/taobao/agoo/k;->c:Lcom/taobao/agoo/c;

    const-string v0, "503.1"

    const-string v1, "req data null"

    invoke-virtual {p1, v0, v1}, Lcom/taobao/agoo/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 150
    :cond_4
    new-instance v0, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const-string v1, "AgooDeviceCmd"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1, v2}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 151
    iget-object p1, p0, Lcom/taobao/agoo/k;->b:Lcom/taobao/accs/c;

    iget-object v1, p0, Lcom/taobao/agoo/k;->a:Landroid/content/Context;

    invoke-interface {p1, v1, v0}, Lcom/taobao/accs/c;->b(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 153
    iget-object p1, p0, Lcom/taobao/agoo/k;->c:Lcom/taobao/agoo/c;

    if-eqz p1, :cond_7

    .line 154
    iget-object p1, p0, Lcom/taobao/agoo/k;->c:Lcom/taobao/agoo/c;

    const-string v0, "503.1"

    const-string v1, "accs channel disabled!"

    invoke-virtual {p1, v0, v1}, Lcom/taobao/agoo/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_5
    iget-object v0, p0, Lcom/taobao/agoo/k;->c:Lcom/taobao/agoo/c;

    if-eqz v0, :cond_7

    .line 159
    invoke-static {}, Lcom/taobao/agoo/e;->a()Lcom/taobao/agoo/a/b;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/taobao/agoo/k;->c:Lcom/taobao/agoo/c;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 163
    :cond_6
    iget-object v0, p0, Lcom/taobao/agoo/k;->c:Lcom/taobao/agoo/c;

    if-eqz v0, :cond_7

    .line 164
    iget-object v0, p0, Lcom/taobao/agoo/k;->c:Lcom/taobao/agoo/c;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "accs bindapp error!"

    invoke-virtual {v0, p1, v1}, Lcom/taobao/agoo/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "TaobaoRegister"

    const-string v1, "register onBindApp"

    .line 169
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v0, v1, p1, p2}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/taobao/agoo/k;->d:Ljava/lang/String;

    return-object v0
.end method
