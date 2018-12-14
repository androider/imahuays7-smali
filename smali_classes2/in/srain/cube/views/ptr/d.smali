.class Lin/srain/cube/views/ptr/d;
.super Ljava/lang/Object;
.source "PtrUIHandlerHolder.java"

# interfaces
.implements Lin/srain/cube/views/ptr/c;


# instance fields
.field private a:Lin/srain/cube/views/ptr/c;

.field private b:Lin/srain/cube/views/ptr/d;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lin/srain/cube/views/ptr/d;Lin/srain/cube/views/ptr/c;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Lin/srain/cube/views/ptr/d;->a:Lin/srain/cube/views/ptr/c;

    if-nez v0, :cond_2

    .line 38
    iput-object p1, p0, Lin/srain/cube/views/ptr/d;->a:Lin/srain/cube/views/ptr/c;

    return-void

    .line 46
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lin/srain/cube/views/ptr/d;->a(Lin/srain/cube/views/ptr/c;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 49
    :cond_3
    iget-object v0, p0, Lin/srain/cube/views/ptr/d;->b:Lin/srain/cube/views/ptr/d;

    if-nez v0, :cond_4

    .line 54
    new-instance v0, Lin/srain/cube/views/ptr/d;

    invoke-direct {v0}, Lin/srain/cube/views/ptr/d;-><init>()V

    .line 55
    iput-object p1, v0, Lin/srain/cube/views/ptr/d;->a:Lin/srain/cube/views/ptr/c;

    .line 56
    iput-object v0, p0, Lin/srain/cube/views/ptr/d;->b:Lin/srain/cube/views/ptr/d;

    return-void

    .line 43
    :cond_4
    iget-object p0, p0, Lin/srain/cube/views/ptr/d;->b:Lin/srain/cube/views/ptr/d;

    goto :goto_0
.end method

.method private a(Lin/srain/cube/views/ptr/c;)Z
    .locals 1

    .line 14
    iget-object v0, p0, Lin/srain/cube/views/ptr/d;->a:Lin/srain/cube/views/ptr/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/srain/cube/views/ptr/d;->a:Lin/srain/cube/views/ptr/c;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static b()Lin/srain/cube/views/ptr/d;
    .locals 1

    .line 60
    new-instance v0, Lin/srain/cube/views/ptr/d;

    invoke-direct {v0}, Lin/srain/cube/views/ptr/d;-><init>()V

    return-object v0
.end method

.method private c()Lin/srain/cube/views/ptr/c;
    .locals 1

    .line 26
    iget-object v0, p0, Lin/srain/cube/views/ptr/d;->a:Lin/srain/cube/views/ptr/c;

    return-object v0
.end method


# virtual methods
.method public a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 2

    move-object v0, p0

    .line 106
    :cond_0
    invoke-direct {v0}, Lin/srain/cube/views/ptr/d;->c()Lin/srain/cube/views/ptr/c;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 108
    invoke-interface {v1, p1}, Lin/srain/cube/views/ptr/c;->a(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    .line 110
    :cond_1
    iget-object v0, v0, Lin/srain/cube/views/ptr/d;->b:Lin/srain/cube/views/ptr/d;

    if-nez v0, :cond_0

    return-void
.end method

.method public a(Lin/srain/cube/views/ptr/PtrFrameLayout;ZBLin/srain/cube/views/ptr/a/a;)V
    .locals 2

    move-object v0, p0

    .line 153
    :cond_0
    invoke-direct {v0}, Lin/srain/cube/views/ptr/d;->c()Lin/srain/cube/views/ptr/c;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 155
    invoke-interface {v1, p1, p2, p3, p4}, Lin/srain/cube/views/ptr/c;->a(Lin/srain/cube/views/ptr/PtrFrameLayout;ZBLin/srain/cube/views/ptr/a/a;)V

    .line 157
    :cond_1
    iget-object v0, v0, Lin/srain/cube/views/ptr/d;->b:Lin/srain/cube/views/ptr/d;

    if-nez v0, :cond_0

    return-void
.end method

.method public a()Z
    .locals 1

    .line 22
    iget-object v0, p0, Lin/srain/cube/views/ptr/d;->a:Lin/srain/cube/views/ptr/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 2

    .line 115
    invoke-virtual {p0}, Lin/srain/cube/views/ptr/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    .line 120
    :cond_1
    invoke-direct {v0}, Lin/srain/cube/views/ptr/d;->c()Lin/srain/cube/views/ptr/c;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 122
    invoke-interface {v1, p1}, Lin/srain/cube/views/ptr/c;->b(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    .line 124
    :cond_2
    iget-object v0, v0, Lin/srain/cube/views/ptr/d;->b:Lin/srain/cube/views/ptr/d;

    if-nez v0, :cond_1

    return-void
.end method

.method public c(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 2

    move-object v0, p0

    .line 131
    :cond_0
    invoke-direct {v0}, Lin/srain/cube/views/ptr/d;->c()Lin/srain/cube/views/ptr/c;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 133
    invoke-interface {v1, p1}, Lin/srain/cube/views/ptr/c;->c(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    .line 135
    :cond_1
    iget-object v0, v0, Lin/srain/cube/views/ptr/d;->b:Lin/srain/cube/views/ptr/d;

    if-nez v0, :cond_0

    return-void
.end method

.method public d(Lin/srain/cube/views/ptr/PtrFrameLayout;)V
    .locals 2

    move-object v0, p0

    .line 142
    :cond_0
    invoke-direct {v0}, Lin/srain/cube/views/ptr/d;->c()Lin/srain/cube/views/ptr/c;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 144
    invoke-interface {v1, p1}, Lin/srain/cube/views/ptr/c;->d(Lin/srain/cube/views/ptr/PtrFrameLayout;)V

    .line 146
    :cond_1
    iget-object v0, v0, Lin/srain/cube/views/ptr/d;->b:Lin/srain/cube/views/ptr/d;

    if-nez v0, :cond_0

    return-void
.end method
