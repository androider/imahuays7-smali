.class public Lorg/fourthline/cling/model/types/DLNACaps;
.super Ljava/lang/Object;
.source "DLNACaps.java"


# instance fields
.field final caps:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/fourthline/cling/model/types/DLNACaps;->caps:[Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/DLNACaps;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/types/InvalidValueException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, ","

    .line 41
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 42
    array-length v1, p0

    new-array v1, v1, [Ljava/lang/String;

    .line 43
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 44
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_1
    new-instance p0, Lorg/fourthline/cling/model/types/DLNACaps;

    invoke-direct {p0, v1}, Lorg/fourthline/cling/model/types/DLNACaps;-><init>([Ljava/lang/String;)V

    return-object p0

    .line 40
    :cond_2
    :goto_1
    new-instance p0, Lorg/fourthline/cling/model/types/DLNACaps;

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/fourthline/cling/model/types/DLNACaps;-><init>([Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 54
    :cond_1
    check-cast p1, Lorg/fourthline/cling/model/types/DLNACaps;

    .line 56
    iget-object v2, p0, Lorg/fourthline/cling/model/types/DLNACaps;->caps:[Ljava/lang/String;

    iget-object p1, p1, Lorg/fourthline/cling/model/types/DLNACaps;->caps:[Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public getCaps()[Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/fourthline/cling/model/types/DLNACaps;->caps:[Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/fourthline/cling/model/types/DLNACaps;->caps:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 68
    invoke-virtual {p0}, Lorg/fourthline/cling/model/types/DLNACaps;->getCaps()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/fourthline/cling/model/ModelUtil;->toCommaSeparatedList([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
