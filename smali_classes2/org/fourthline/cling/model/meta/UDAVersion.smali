.class public Lorg/fourthline/cling/model/meta/UDAVersion;
.super Ljava/lang/Object;
.source "UDAVersion.java"

# interfaces
.implements Lorg/fourthline/cling/model/Validatable;


# instance fields
.field private major:I

.field private minor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 34
    iput v0, p0, Lorg/fourthline/cling/model/meta/UDAVersion;->major:I

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lorg/fourthline/cling/model/meta/UDAVersion;->minor:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 34
    iput v0, p0, Lorg/fourthline/cling/model/meta/UDAVersion;->major:I

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lorg/fourthline/cling/model/meta/UDAVersion;->minor:I

    .line 41
    iput p1, p0, Lorg/fourthline/cling/model/meta/UDAVersion;->major:I

    .line 42
    iput p2, p0, Lorg/fourthline/cling/model/meta/UDAVersion;->minor:I

    return-void
.end method


# virtual methods
.method public getMajor()I
    .locals 1

    .line 46
    iget v0, p0, Lorg/fourthline/cling/model/meta/UDAVersion;->major:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    .line 50
    iget v0, p0, Lorg/fourthline/cling/model/meta/UDAVersion;->minor:I

    return v0
.end method

.method public validate()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/ValidationError;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/UDAVersion;->getMajor()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 57
    new-instance v1, Lorg/fourthline/cling/model/ValidationError;

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "major"

    const-string v4, "UDA major spec version must be 1"

    invoke-direct {v1, v2, v3, v4}, Lorg/fourthline/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/UDAVersion;->getMajor()I

    move-result v1

    if-gez v1, :cond_1

    .line 64
    new-instance v1, Lorg/fourthline/cling/model/ValidationError;

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "minor"

    const-string v4, "UDA minor spec version must be equal or greater 0"

    invoke-direct {v1, v2, v3, v4}, Lorg/fourthline/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method
