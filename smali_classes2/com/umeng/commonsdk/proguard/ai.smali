.class public Lcom/umeng/commonsdk/proguard/ai;
.super Ljava/lang/Object;
.source "TDeserializer.java"


# instance fields
.field private final a:Lcom/umeng/commonsdk/proguard/e;

.field private final b:Lcom/umeng/commonsdk/proguard/q;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/umeng/commonsdk/proguard/ae$a;

    invoke-direct {v0}, Lcom/umeng/commonsdk/proguard/ae$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/proguard/ai;-><init>(Lcom/umeng/commonsdk/proguard/am;)V

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/proguard/am;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/umeng/commonsdk/proguard/q;

    invoke-direct {v0}, Lcom/umeng/commonsdk/proguard/q;-><init>()V

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/ai;->b:Lcom/umeng/commonsdk/proguard/q;

    .line 58
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/ai;->b:Lcom/umeng/commonsdk/proguard/q;

    invoke-interface {p1, v0}, Lcom/umeng/commonsdk/proguard/am;->a(Lcom/umeng/commonsdk/proguard/s;)Lcom/umeng/commonsdk/proguard/e;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/ai;->a:Lcom/umeng/commonsdk/proguard/e;

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/commonsdk/proguard/l;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/ai;->b:Lcom/umeng/commonsdk/proguard/q;

    invoke-virtual {v0, p2}, Lcom/umeng/commonsdk/proguard/q;->a([B)V

    .line 70
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ai;->a:Lcom/umeng/commonsdk/proguard/e;

    invoke-interface {p1, p2}, Lcom/umeng/commonsdk/proguard/l;->read(Lcom/umeng/commonsdk/proguard/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/ai;->b:Lcom/umeng/commonsdk/proguard/q;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/q;->a()V

    .line 73
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/ai;->a:Lcom/umeng/commonsdk/proguard/e;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/e;->x()V

    return-void

    :catchall_0
    move-exception p1

    .line 72
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ai;->b:Lcom/umeng/commonsdk/proguard/q;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/q;->a()V

    .line 73
    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/ai;->a:Lcom/umeng/commonsdk/proguard/e;

    invoke-virtual {p2}, Lcom/umeng/commonsdk/proguard/e;->x()V

    throw p1
.end method
