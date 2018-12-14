.class public Lorg/eclipse/jetty/util/ajax/JSON$StringSource;
.super Ljava/lang/Object;
.source "JSON.java"

# interfaces
.implements Lorg/eclipse/jetty/util/ajax/JSON$Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/ajax/JSON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringSource"
.end annotation


# instance fields
.field private index:I

.field private scratch:[C

.field private final string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1432
    iput-object p1, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->string:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1437
    iget v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->index:I

    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->string:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1439
    iput-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->scratch:[C

    const/4 v0, 0x0

    return v0
.end method

.method public next()C
    .locals 3

    .line 1445
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->string:Ljava/lang/String;

    iget v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public peek()C
    .locals 2

    .line 1450
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->string:Ljava/lang/String;

    iget v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public scratchBuffer()[C
    .locals 1

    .line 1461
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->scratch:[C

    if-nez v0, :cond_0

    .line 1462
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->scratch:[C

    .line 1463
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->scratch:[C

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->string:Ljava/lang/String;

    iget v2, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->index:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|||"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->string:Ljava/lang/String;

    iget v2, p0, Lorg/eclipse/jetty/util/ajax/JSON$StringSource;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
