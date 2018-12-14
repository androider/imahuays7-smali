.class public Lorg/apache/httpcore/message/HeaderGroup;
.super Ljava/lang/Object;
.source "HeaderGroup.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x243470d8cecee2c1L


# instance fields
.field private final a:[Lorg/apache/httpcore/e;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/httpcore/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    new-array v0, v0, [Lorg/apache/httpcore/e;

    iput-object v0, p0, Lorg/apache/httpcore/message/HeaderGroup;->a:[Lorg/apache/httpcore/e;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/httpcore/message/HeaderGroup;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addHeader(Lorg/apache/httpcore/e;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/apache/httpcore/message/HeaderGroup;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/httpcore/message/HeaderGroup;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 305
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 255
    :goto_0
    iget-object v2, p0, Lorg/apache/httpcore/message/HeaderGroup;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 256
    iget-object v2, p0, Lorg/apache/httpcore/message/HeaderGroup;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/httpcore/e;

    .line 257
    invoke-interface {v2}, Lorg/apache/httpcore/e;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public copy()Lorg/apache/httpcore/message/HeaderGroup;
    .locals 3

    .line 298
    new-instance v0, Lorg/apache/httpcore/message/HeaderGroup;

    invoke-direct {v0}, Lorg/apache/httpcore/message/HeaderGroup;-><init>()V

    .line 299
    iget-object v1, v0, Lorg/apache/httpcore/message/HeaderGroup;->b:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/httpcore/message/HeaderGroup;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getAllHeaders()[Lorg/apache/httpcore/e;
    .locals 2

    .line 239
    iget-object v0, p0, Lorg/apache/httpcore/message/HeaderGroup;->b:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/httpcore/message/HeaderGroup;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/httpcore/e;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/httpcore/e;

    return-object v0
.end method

.method public getCondensedHeader(Ljava/lang/String;)Lorg/apache/httpcore/e;
    .locals 5

    .line 147
    invoke-virtual {p0, p1}, Lorg/apache/httpcore/message/HeaderGroup;->getHeaders(Ljava/lang/String;)[Lorg/apache/httpcore/e;

    move-result-object v0

    .line 149
    array-length v1, v0

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 151
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 152
    aget-object p1, v0, v2

    return-object p1

    .line 154
    :cond_1
    new-instance v1, Lorg/apache/httpcore/util/CharArrayBuffer;

    const/16 v4, 0x80

    invoke-direct {v1, v4}, Lorg/apache/httpcore/util/CharArrayBuffer;-><init>(I)V

    .line 155
    aget-object v2, v0, v2

    invoke-interface {v2}, Lorg/apache/httpcore/e;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 156
    :goto_0
    array-length v2, v0

    if-ge v3, v2, :cond_2

    const-string v2, ", "

    .line 157
    invoke-virtual {v1, v2}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 158
    aget-object v2, v0, v3

    invoke-interface {v2}, Lorg/apache/httpcore/e;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/httpcore/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 161
    :cond_2
    new-instance v0, Lorg/apache/httpcore/message/BasicHeader;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/apache/httpcore/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/httpcore/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFirstHeader(Ljava/lang/String;)Lorg/apache/httpcore/e;
    .locals 3

    const/4 v0, 0x0

    .line 204
    :goto_0
    iget-object v1, p0, Lorg/apache/httpcore/message/HeaderGroup;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 205
    iget-object v1, p0, Lorg/apache/httpcore/message/HeaderGroup;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/httpcore/e;

    .line 206
    invoke-interface {v1}, Lorg/apache/httpcore/e;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getHeaders(Ljava/lang/String;)[Lorg/apache/httpcore/e;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 180
    :goto_0
    iget-object v2, p0, Lorg/apache/httpcore/message/HeaderGroup;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 181
    iget-object v2, p0, Lorg/apache/httpcore/message/HeaderGroup;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/httpcore/e;

    .line 182
    invoke-interface {v2}, Lorg/apache/httpcore/e;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 189
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/apache/httpcore/e;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/httpcore/e;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/apache/httpcore/message/HeaderGroup;->a:[Lorg/apache/httpcore/e;

    :goto_1
    return-object p1
.end method

.method public getLastHeader(Ljava/lang/String;)Lorg/apache/httpcore/e;
    .locals 3

    .line 223
    iget-object v0, p0, Lorg/apache/httpcore/message/HeaderGroup;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 224
    iget-object v1, p0, Lorg/apache/httpcore/message/HeaderGroup;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/httpcore/e;

    .line 225
    invoke-interface {v1}, Lorg/apache/httpcore/e;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public iterator()Lorg/apache/httpcore/g;
    .locals 3

    .line 273
    new-instance v0, Lorg/apache/httpcore/message/j;

    iget-object v1, p0, Lorg/apache/httpcore/message/HeaderGroup;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/httpcore/message/j;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public iterator(Ljava/lang/String;)Lorg/apache/httpcore/g;
    .locals 2

    .line 287
    new-instance v0, Lorg/apache/httpcore/message/j;

    iget-object v1, p0, Lorg/apache/httpcore/message/HeaderGroup;->b:Ljava/util/List;

    invoke-direct {v0, v1, p1}, Lorg/apache/httpcore/message/j;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public removeHeader(Lorg/apache/httpcore/e;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lorg/apache/httpcore/message/HeaderGroup;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setHeaders([Lorg/apache/httpcore/e;)V
    .locals 1

    .line 128
    invoke-virtual {p0}, Lorg/apache/httpcore/message/HeaderGroup;->clear()V

    if-nez p1, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/apache/httpcore/message/HeaderGroup;->b:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lorg/apache/httpcore/message/HeaderGroup;->b:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateHeader(Lorg/apache/httpcore/e;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 110
    :goto_0
    iget-object v1, p0, Lorg/apache/httpcore/message/HeaderGroup;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 111
    iget-object v1, p0, Lorg/apache/httpcore/message/HeaderGroup;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/httpcore/e;

    .line 112
    invoke-interface {v1}, Lorg/apache/httpcore/e;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/httpcore/e;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Lorg/apache/httpcore/message/HeaderGroup;->b:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_2
    iget-object v0, p0, Lorg/apache/httpcore/message/HeaderGroup;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
