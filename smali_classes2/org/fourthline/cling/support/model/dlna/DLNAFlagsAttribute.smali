.class public Lorg/fourthline/cling/support/model/dlna/DLNAFlagsAttribute;
.super Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;
.source "DLNAFlagsAttribute.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/model/dlna/DLNAAttribute<",
        "Ljava/util/EnumSet<",
        "Lorg/fourthline/cling/support/model/dlna/DLNAFlags;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;-><init>()V

    .line 26
    const-class v0, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/support/model/dlna/DLNAFlagsAttribute;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public varargs constructor <init>([Lorg/fourthline/cling/support/model/dlna/DLNAFlags;)V
    .locals 4

    .line 29
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAAttribute;-><init>()V

    if-eqz p1, :cond_1

    .line 30
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 31
    aget-object v1, p1, v0

    .line 32
    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 33
    array-length v2, p1

    sub-int/2addr v2, v3

    invoke-static {p1, v3, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    invoke-static {v1, p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/dlna/DLNAFlagsAttribute;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/support/model/dlna/DLNAFlagsAttribute;->setValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 5

    .line 62
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/DLNAFlagsAttribute;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    .line 63
    invoke-virtual {v3}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->getCode()I

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0

    .line 65
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "%08x%024x"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/support/model/dlna/InvalidDLNAProtocolAttributeException;
        }
    .end annotation

    .line 42
    const-class p2, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    .line 44
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x18

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 45
    invoke-static {}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->values()[Lorg/fourthline/cling/support/model/dlna/DLNAFlags;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 46
    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->getCode()I

    move-result v5

    and-int/2addr v5, v0

    .line 47
    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/dlna/DLNAFlags;->getCode()I

    move-result v6

    if-ne v6, v5, :cond_0

    .line 48
    invoke-virtual {p2, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :catch_0
    :cond_1
    invoke-virtual {p2}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    new-instance p2, Lorg/fourthline/cling/support/model/dlna/InvalidDLNAProtocolAttributeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t parse DLNA flags integer from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/fourthline/cling/support/model/dlna/InvalidDLNAProtocolAttributeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 57
    :cond_2
    invoke-virtual {p0, p2}, Lorg/fourthline/cling/support/model/dlna/DLNAFlagsAttribute;->setValue(Ljava/lang/Object;)V

    return-void
.end method
