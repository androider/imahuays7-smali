.class public abstract Lcom/umeng/commonsdk/proguard/v;
.super Ljava/lang/Object;
.source "TUnion.java"

# interfaces
.implements Lcom/umeng/commonsdk/proguard/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/proguard/v$c;,
        Lcom/umeng/commonsdk/proguard/v$d;,
        Lcom/umeng/commonsdk/proguard/v$a;,
        Lcom/umeng/commonsdk/proguard/v$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/umeng/commonsdk/proguard/v<",
        "**>;F::",
        "Lcom/umeng/commonsdk/proguard/aj;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/umeng/commonsdk/proguard/l<",
        "TT;TF;>;"
    }
.end annotation


# static fields
.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/commonsdk/proguard/j;",
            ">;",
            "Lcom/umeng/commonsdk/proguard/m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Ljava/lang/Object;

.field protected b:Lcom/umeng/commonsdk/proguard/aj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/proguard/v;->c:Ljava/util/Map;

    .line 51
    sget-object v0, Lcom/umeng/commonsdk/proguard/v;->c:Ljava/util/Map;

    const-class v1, Lcom/umeng/commonsdk/proguard/n;

    new-instance v2, Lcom/umeng/commonsdk/proguard/v$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/umeng/commonsdk/proguard/v$b;-><init>(Lcom/umeng/commonsdk/proguard/v$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/umeng/commonsdk/proguard/v;->c:Ljava/util/Map;

    const-class v1, Lcom/umeng/commonsdk/proguard/o;

    new-instance v2, Lcom/umeng/commonsdk/proguard/v$d;

    invoke-direct {v2, v3}, Lcom/umeng/commonsdk/proguard/v$d;-><init>(Lcom/umeng/commonsdk/proguard/v$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/v;->b:Lcom/umeng/commonsdk/proguard/aj;

    .line 46
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/v;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lcom/umeng/commonsdk/proguard/aj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/v;->b:Lcom/umeng/commonsdk/proguard/aj;

    return-object v0
.end method

.method protected abstract a(S)Lcom/umeng/commonsdk/proguard/aj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)TF;"
        }
    .end annotation
.end method

.method public a(I)Ljava/lang/Object;
    .locals 0

    int-to-short p1, p1

    .line 124
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/v;->a(S)Lcom/umeng/commonsdk/proguard/aj;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/v;->a(Lcom/umeng/commonsdk/proguard/aj;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/umeng/commonsdk/proguard/aj;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/v;->b:Lcom/umeng/commonsdk/proguard/aj;

    if-eq p1, v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get the value of field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " because union\'s set field is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/v;->b:Lcom/umeng/commonsdk/proguard/aj;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/v;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract a(Lcom/umeng/commonsdk/proguard/e;Lcom/umeng/commonsdk/proguard/b;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation
.end method

.method protected abstract a(Lcom/umeng/commonsdk/proguard/e;S)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation
.end method

.method public a(ILjava/lang/Object;)V
    .locals 0

    int-to-short p1, p1

    .line 150
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/v;->a(S)Lcom/umeng/commonsdk/proguard/aj;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/proguard/v;->a(Lcom/umeng/commonsdk/proguard/aj;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/aj;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/proguard/v;->b(Lcom/umeng/commonsdk/proguard/aj;Ljava/lang/Object;)V

    .line 145
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/v;->b:Lcom/umeng/commonsdk/proguard/aj;

    .line 146
    iput-object p2, p0, Lcom/umeng/commonsdk/proguard/v;->a:Ljava/lang/Object;

    return-void
.end method

.method protected abstract a(Lcom/umeng/commonsdk/proguard/e;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/v;->a:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract b(Lcom/umeng/commonsdk/proguard/aj;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation
.end method

.method protected abstract b(Lcom/umeng/commonsdk/proguard/e;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation
.end method

.method public b(I)Z
    .locals 0

    int-to-short p1, p1

    .line 136
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/v;->a(S)Lcom/umeng/commonsdk/proguard/aj;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/v;->b(Lcom/umeng/commonsdk/proguard/aj;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/umeng/commonsdk/proguard/aj;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/v;->b:Lcom/umeng/commonsdk/proguard/aj;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected abstract c(Lcom/umeng/commonsdk/proguard/aj;)Lcom/umeng/commonsdk/proguard/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Lcom/umeng/commonsdk/proguard/b;"
        }
    .end annotation
.end method

.method public c()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/v;->b:Lcom/umeng/commonsdk/proguard/aj;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/v;->b:Lcom/umeng/commonsdk/proguard/aj;

    .line 206
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/v;->a:Ljava/lang/Object;

    return-void
.end method

.method protected abstract d()Lcom/umeng/commonsdk/proguard/i;
.end method

.method public read(Lcom/umeng/commonsdk/proguard/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 140
    sget-object v0, Lcom/umeng/commonsdk/proguard/v;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/e;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/proguard/m;

    invoke-interface {v0}, Lcom/umeng/commonsdk/proguard/m;->a()Lcom/umeng/commonsdk/proguard/j;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/commonsdk/proguard/j;->a(Lcom/umeng/commonsdk/proguard/e;Lcom/umeng/commonsdk/proguard/l;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/v;->a()Lcom/umeng/commonsdk/proguard/aj;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/v;->b()Ljava/lang/Object;

    move-result-object v1

    .line 192
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/v;->a()Lcom/umeng/commonsdk/proguard/aj;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/umeng/commonsdk/proguard/v;->c(Lcom/umeng/commonsdk/proguard/aj;)Lcom/umeng/commonsdk/proguard/b;

    move-result-object v2

    iget-object v2, v2, Lcom/umeng/commonsdk/proguard/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    .line 193
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    instance-of v2, v1, Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_0

    .line 195
    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lcom/umeng/commonsdk/proguard/ah;->a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    const-string v1, ">"

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/umeng/commonsdk/proguard/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/r;
        }
    .end annotation

    .line 154
    sget-object v0, Lcom/umeng/commonsdk/proguard/v;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/proguard/e;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/proguard/m;

    invoke-interface {v0}, Lcom/umeng/commonsdk/proguard/m;->a()Lcom/umeng/commonsdk/proguard/j;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/commonsdk/proguard/j;->b(Lcom/umeng/commonsdk/proguard/e;Lcom/umeng/commonsdk/proguard/l;)V

    return-void
.end method
