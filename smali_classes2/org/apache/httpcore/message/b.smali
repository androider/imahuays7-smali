.class public Lorg/apache/httpcore/message/b;
.super Ljava/lang/Object;
.source "BasicHeaderElement.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/httpcore/f;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:[Lorg/apache/httpcore/u;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/httpcore/u;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Name"

    .line 59
    invoke-static {p1, v0}, Lorg/apache/httpcore/util/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/httpcore/message/b;->a:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lorg/apache/httpcore/message/b;->b:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 62
    iput-object p3, p0, Lorg/apache/httpcore/message/b;->c:[Lorg/apache/httpcore/u;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 64
    new-array p1, p1, [Lorg/apache/httpcore/u;

    iput-object p1, p0, Lorg/apache/httpcore/message/b;->c:[Lorg/apache/httpcore/u;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/apache/httpcore/message/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/httpcore/message/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()[Lorg/apache/httpcore/u;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/apache/httpcore/message/b;->c:[Lorg/apache/httpcore/u;

    invoke-virtual {v0}, [Lorg/apache/httpcore/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/httpcore/u;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 162
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 122
    :cond_0
    instance-of v1, p1, Lorg/apache/httpcore/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 123
    check-cast p1, Lorg/apache/httpcore/message/b;

    .line 124
    iget-object v1, p0, Lorg/apache/httpcore/message/b;->a:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/httpcore/message/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/httpcore/message/b;->b:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/httpcore/message/b;->b:Ljava/lang/String;

    .line 125
    invoke-static {v1, v3}, Lorg/apache/httpcore/util/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/httpcore/message/b;->c:[Lorg/apache/httpcore/u;

    iget-object p1, p1, Lorg/apache/httpcore/message/b;->c:[Lorg/apache/httpcore/u;

    .line 126
    invoke-static {v1, p1}, Lorg/apache/httpcore/util/e;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 5

    .line 135
    iget-object v0, p0, Lorg/apache/httpcore/message/b;->a:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-static {v1, v0}, Lorg/apache/httpcore/util/e;->a(ILjava/lang/Object;)I

    move-result v0

    .line 136
    iget-object v1, p0, Lorg/apache/httpcore/message/b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/httpcore/util/e;->a(ILjava/lang/Object;)I

    move-result v0

    .line 137
    iget-object v1, p0, Lorg/apache/httpcore/message/b;->c:[Lorg/apache/httpcore/u;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 138
    invoke-static {v0, v4}, Lorg/apache/httpcore/util/e;->a(ILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    iget-object v1, p0, Lorg/apache/httpcore/message/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v1, p0, Lorg/apache/httpcore/message/b;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "="

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v1, p0, Lorg/apache/httpcore/message/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_0
    iget-object v1, p0, Lorg/apache/httpcore/message/b;->c:[Lorg/apache/httpcore/u;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    const-string v5, "; "

    .line 152
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
