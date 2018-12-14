.class Lcom/umeng/commonsdk/proguard/v$a;
.super Lcom/umeng/commonsdk/proguard/n;
.source "TUnion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/proguard/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/commonsdk/proguard/n<",
        "Lcom/umeng/commonsdk/proguard/v;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/n;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/proguard/v$1;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/v$a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/umeng/commonsdk/proguard/e;Lcom/umeng/commonsdk/proguard/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 215
    check-cast p2, Lcom/umeng/commonsdk/proguard/v;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/proguard/v$a;->a(Lcom/umeng/commonsdk/proguard/e;Lcom/umeng/commonsdk/proguard/v;)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/e;Lcom/umeng/commonsdk/proguard/v;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    const/4 v0, 0x0

    .line 219
    iput-object v0, p2, Lcom/umeng/commonsdk/proguard/v;->b:Lcom/umeng/commonsdk/proguard/aj;

    .line 220
    iput-object v0, p2, Lcom/umeng/commonsdk/proguard/v;->a:Ljava/lang/Object;

    .line 222
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/e;->f()Lcom/umeng/commonsdk/proguard/i;

    .line 224
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/e;->h()Lcom/umeng/commonsdk/proguard/b;

    move-result-object v0

    .line 226
    invoke-virtual {p2, p1, v0}, Lcom/umeng/commonsdk/proguard/v;->a(Lcom/umeng/commonsdk/proguard/e;Lcom/umeng/commonsdk/proguard/b;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/commonsdk/proguard/v;->a:Ljava/lang/Object;

    .line 227
    iget-object v1, p2, Lcom/umeng/commonsdk/proguard/v;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 228
    iget-short v0, v0, Lcom/umeng/commonsdk/proguard/b;->c:S

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/v;->a(S)Lcom/umeng/commonsdk/proguard/aj;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/commonsdk/proguard/v;->b:Lcom/umeng/commonsdk/proguard/aj;

    .line 231
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/e;->i()V

    .line 235
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/e;->h()Lcom/umeng/commonsdk/proguard/b;

    .line 236
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/e;->g()V

    return-void
.end method

.method public synthetic b(Lcom/umeng/commonsdk/proguard/e;Lcom/umeng/commonsdk/proguard/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 215
    check-cast p2, Lcom/umeng/commonsdk/proguard/v;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/proguard/v$a;->b(Lcom/umeng/commonsdk/proguard/e;Lcom/umeng/commonsdk/proguard/v;)V

    return-void
.end method

.method public b(Lcom/umeng/commonsdk/proguard/e;Lcom/umeng/commonsdk/proguard/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 241
    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/v;->a()Lcom/umeng/commonsdk/proguard/aj;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/v;->b()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/v;->d()Lcom/umeng/commonsdk/proguard/i;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Lcom/umeng/commonsdk/proguard/i;)V

    .line 245
    iget-object v0, p2, Lcom/umeng/commonsdk/proguard/v;->b:Lcom/umeng/commonsdk/proguard/aj;

    invoke-virtual {p2, v0}, Lcom/umeng/commonsdk/proguard/v;->c(Lcom/umeng/commonsdk/proguard/aj;)Lcom/umeng/commonsdk/proguard/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/proguard/e;->a(Lcom/umeng/commonsdk/proguard/b;)V

    .line 246
    invoke-virtual {p2, p1}, Lcom/umeng/commonsdk/proguard/v;->a(Lcom/umeng/commonsdk/proguard/e;)V

    .line 247
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/e;->b()V

    .line 248
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/e;->c()V

    .line 249
    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/e;->a()V

    return-void

    .line 242
    :cond_1
    :goto_0
    new-instance p1, Lcom/umeng/commonsdk/proguard/al;

    const-string p2, "Cannot write a TUnion with no set value!"

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/proguard/al;-><init>(Ljava/lang/String;)V

    throw p1
.end method
