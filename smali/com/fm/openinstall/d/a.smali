.class public Lcom/fm/openinstall/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Lcom/fm/openinstall/f/c;

.field private b:J

.field private c:Lcom/fm/openinstall/d/g;

.field private d:Lcom/fm/openinstall/d/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/fm/openinstall/d/a;

    invoke-static {v0}, Lcom/fm/openinstall/f/c;->a(Ljava/lang/Class;)Lcom/fm/openinstall/f/c;

    move-result-object v0

    iput-object v0, p0, Lcom/fm/openinstall/d/a;->a:Lcom/fm/openinstall/f/c;

    return-void
.end method

.method public constructor <init>(JLcom/fm/openinstall/d/e;Lcom/fm/openinstall/d/g;)V
    .locals 0

    invoke-direct {p0, p4}, Lcom/fm/openinstall/d/a;-><init>(Lcom/fm/openinstall/d/g;)V

    iput-object p3, p0, Lcom/fm/openinstall/d/a;->d:Lcom/fm/openinstall/d/e;

    iput-wide p1, p0, Lcom/fm/openinstall/d/a;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/fm/openinstall/d/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/fm/openinstall/d/a;

    invoke-static {v0}, Lcom/fm/openinstall/f/c;->a(Ljava/lang/Class;)Lcom/fm/openinstall/f/c;

    move-result-object v0

    iput-object v0, p0, Lcom/fm/openinstall/d/a;->a:Lcom/fm/openinstall/f/c;

    iput-object p1, p0, Lcom/fm/openinstall/d/a;->c:Lcom/fm/openinstall/d/g;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/fm/openinstall/d/a;->d:Lcom/fm/openinstall/d/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()[B
    .locals 1

    invoke-virtual {p0}, Lcom/fm/openinstall/d/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fm/openinstall/d/a;->d:Lcom/fm/openinstall/d/e;

    invoke-virtual {v0}, Lcom/fm/openinstall/d/e;->a()[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fm/openinstall/d/a;->c:Lcom/fm/openinstall/d/g;

    iget-object v0, v0, Lcom/fm/openinstall/d/g;->g:[B

    return-object v0
.end method

.method public c()Lcom/fm/openinstall/d/a;
    .locals 5

    new-instance v0, Lcom/fm/openinstall/d/a;

    iget-wide v1, p0, Lcom/fm/openinstall/d/a;->b:J

    iget-object v3, p0, Lcom/fm/openinstall/d/a;->d:Lcom/fm/openinstall/d/e;

    invoke-virtual {v3}, Lcom/fm/openinstall/d/e;->b()Lcom/fm/openinstall/d/e;

    move-result-object v3

    iget-object v4, p0, Lcom/fm/openinstall/d/a;->c:Lcom/fm/openinstall/d/g;

    invoke-virtual {v4}, Lcom/fm/openinstall/d/g;->a()Lcom/fm/openinstall/d/g;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fm/openinstall/d/a;-><init>(JLcom/fm/openinstall/d/e;Lcom/fm/openinstall/d/g;)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/fm/openinstall/d/a;->c()Lcom/fm/openinstall/d/a;

    move-result-object v0

    return-object v0
.end method
