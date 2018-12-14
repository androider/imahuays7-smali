.class public Lcom/umeng/commonsdk/proguard/ak;
.super Ljava/lang/Object;
.source "TSerializer.java"


# instance fields
.field private final a:Ljava/io/ByteArrayOutputStream;

.field private final b:Lcom/umeng/commonsdk/proguard/p;

.field private c:Lcom/umeng/commonsdk/proguard/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/umeng/commonsdk/proguard/ae$a;

    invoke-direct {v0}, Lcom/umeng/commonsdk/proguard/ae$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/proguard/ak;-><init>(Lcom/umeng/commonsdk/proguard/am;)V

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/proguard/am;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/ak;->a:Ljava/io/ByteArrayOutputStream;

    .line 46
    new-instance v0, Lcom/umeng/commonsdk/proguard/p;

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/ak;->a:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/p;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/ak;->b:Lcom/umeng/commonsdk/proguard/p;

    .line 67
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/ak;->b:Lcom/umeng/commonsdk/proguard/p;

    invoke-interface {p1, v0}, Lcom/umeng/commonsdk/proguard/am;->a(Lcom/umeng/commonsdk/proguard/s;)Lcom/umeng/commonsdk/proguard/e;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/ak;->c:Lcom/umeng/commonsdk/proguard/e;

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/commonsdk/proguard/l;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/ak;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 81
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/ak;->c:Lcom/umeng/commonsdk/proguard/e;

    invoke-interface {p1, v0}, Lcom/umeng/commonsdk/proguard/l;->write(Lcom/umeng/commonsdk/proguard/e;)V

    .line 82
    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/ak;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method
