.class public Lorg/dom4j/rule/Rule;
.super Ljava/lang/Object;
.source "Rule.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/dom4j/rule/Rule;",
        ">;"
    }
.end annotation


# instance fields
.field private action:Lorg/dom4j/rule/Action;

.field private appearenceCount:I

.field private importPrecedence:I

.field private mode:Ljava/lang/String;

.field private pattern:Lorg/dom4j/rule/Pattern;

.field private priority:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 53
    iput-wide v0, p0, Lorg/dom4j/rule/Rule;->priority:D

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/rule/Pattern;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    .line 58
    invoke-interface {p1}, Lorg/dom4j/rule/Pattern;->getPriority()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/dom4j/rule/Rule;->priority:D

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/rule/Pattern;Lorg/dom4j/rule/Action;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lorg/dom4j/rule/Rule;-><init>(Lorg/dom4j/rule/Pattern;)V

    .line 63
    iput-object p2, p0, Lorg/dom4j/rule/Rule;->action:Lorg/dom4j/rule/Action;

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/rule/Rule;Lorg/dom4j/rule/Pattern;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iget-object v0, p1, Lorg/dom4j/rule/Rule;->mode:Ljava/lang/String;

    iput-object v0, p0, Lorg/dom4j/rule/Rule;->mode:Ljava/lang/String;

    .line 75
    iget v0, p1, Lorg/dom4j/rule/Rule;->importPrecedence:I

    iput v0, p0, Lorg/dom4j/rule/Rule;->importPrecedence:I

    .line 76
    iget-wide v0, p1, Lorg/dom4j/rule/Rule;->priority:D

    iput-wide v0, p0, Lorg/dom4j/rule/Rule;->priority:D

    .line 77
    iget v0, p1, Lorg/dom4j/rule/Rule;->appearenceCount:I

    iput v0, p0, Lorg/dom4j/rule/Rule;->appearenceCount:I

    .line 78
    iget-object p1, p1, Lorg/dom4j/rule/Rule;->action:Lorg/dom4j/rule/Action;

    iput-object p1, p0, Lorg/dom4j/rule/Rule;->action:Lorg/dom4j/rule/Action;

    .line 79
    iput-object p2, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    return-void
.end method

.method private static compareInt(II)I
    .locals 0

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 21
    check-cast p1, Lorg/dom4j/rule/Rule;

    invoke-virtual {p0, p1}, Lorg/dom4j/rule/Rule;->compareTo(Lorg/dom4j/rule/Rule;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/dom4j/rule/Rule;)I
    .locals 4

    .line 102
    iget v0, p0, Lorg/dom4j/rule/Rule;->importPrecedence:I

    iget v1, p1, Lorg/dom4j/rule/Rule;->importPrecedence:I

    invoke-static {v0, v1}, Lorg/dom4j/rule/Rule;->compareInt(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-wide v0, p0, Lorg/dom4j/rule/Rule;->priority:D

    iget-wide v2, p1, Lorg/dom4j/rule/Rule;->priority:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget v0, p0, Lorg/dom4j/rule/Rule;->appearenceCount:I

    iget p1, p1, Lorg/dom4j/rule/Rule;->appearenceCount:I

    invoke-static {v0, p1}, Lorg/dom4j/rule/Rule;->compareInt(II)I

    move-result v0

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 83
    instance-of v0, p1, Lorg/dom4j/rule/Rule;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 84
    check-cast p1, Lorg/dom4j/rule/Rule;

    invoke-virtual {p0, p1}, Lorg/dom4j/rule/Rule;->compareTo(Lorg/dom4j/rule/Rule;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public getAction()Lorg/dom4j/rule/Action;
    .locals 1

    .line 275
    iget-object v0, p0, Lorg/dom4j/rule/Rule;->action:Lorg/dom4j/rule/Action;

    return-object v0
.end method

.method public getAppearenceCount()I
    .locals 1

    .line 239
    iget v0, p0, Lorg/dom4j/rule/Rule;->appearenceCount:I

    return v0
.end method

.method public getImportPrecedence()I
    .locals 1

    .line 203
    iget v0, p0, Lorg/dom4j/rule/Rule;->importPrecedence:I

    return v0
.end method

.method public final getMatchType()S
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    invoke-interface {v0}, Lorg/dom4j/rule/Pattern;->getMatchType()S

    move-result v0

    return v0
.end method

.method public final getMatchesNodeName()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    invoke-interface {v0}, Lorg/dom4j/rule/Pattern;->getMatchesNodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/dom4j/rule/Rule;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getPattern()Lorg/dom4j/rule/Pattern;
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    return-object v0
.end method

.method public getPriority()D
    .locals 2

    .line 221
    iget-wide v0, p0, Lorg/dom4j/rule/Rule;->priority:D

    return-wide v0
.end method

.method public getUnionRules()[Lorg/dom4j/rule/Rule;
    .locals 6

    .line 139
    iget-object v0, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    invoke-interface {v0}, Lorg/dom4j/rule/Pattern;->getUnionPatterns()[Lorg/dom4j/rule/Pattern;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 145
    :cond_0
    array-length v1, v0

    .line 146
    new-array v2, v1, [Lorg/dom4j/rule/Rule;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 149
    new-instance v4, Lorg/dom4j/rule/Rule;

    aget-object v5, v0, v3

    invoke-direct {v4, p0, v5}, Lorg/dom4j/rule/Rule;-><init>(Lorg/dom4j/rule/Rule;Lorg/dom4j/rule/Pattern;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public hashCode()I
    .locals 2

    .line 91
    iget v0, p0, Lorg/dom4j/rule/Rule;->importPrecedence:I

    iget v1, p0, Lorg/dom4j/rule/Rule;->appearenceCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final matches(Lorg/dom4j/Node;)Z
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    invoke-interface {v0, p1}, Lorg/dom4j/rule/Pattern;->matches(Lorg/dom4j/Node;)Z

    move-result p1

    return p1
.end method

.method public setAction(Lorg/dom4j/rule/Action;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lorg/dom4j/rule/Rule;->action:Lorg/dom4j/rule/Action;

    return-void
.end method

.method public setAppearenceCount(I)V
    .locals 0

    .line 248
    iput p1, p0, Lorg/dom4j/rule/Rule;->appearenceCount:I

    return-void
.end method

.method public setImportPrecedence(I)V
    .locals 0

    .line 212
    iput p1, p0, Lorg/dom4j/rule/Rule;->importPrecedence:I

    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lorg/dom4j/rule/Rule;->mode:Ljava/lang/String;

    return-void
.end method

.method public setPattern(Lorg/dom4j/rule/Pattern;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lorg/dom4j/rule/Rule;->pattern:Lorg/dom4j/rule/Pattern;

    return-void
.end method

.method public setPriority(D)V
    .locals 0

    .line 230
    iput-wide p1, p0, Lorg/dom4j/rule/Rule;->priority:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[ pattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/dom4j/rule/Rule;->getPattern()Lorg/dom4j/rule/Pattern;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p0}, Lorg/dom4j/rule/Rule;->getAction()Lorg/dom4j/rule/Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
