.class public Lorg/seamless/util/time/DateFormat;
.super Ljava/lang/Object;
.source "DateFormat.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/seamless/util/time/DateFormat$Preset;
    }
.end annotation


# instance fields
.field protected label:Ljava/lang/String;

.field protected pattern:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/seamless/util/time/DateFormat;->label:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lorg/seamless/util/time/DateFormat;->pattern:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/seamless/util/time/DateFormat;->label:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lorg/seamless/util/time/DateFormat;->pattern:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 79
    :cond_1
    check-cast p1, Lorg/seamless/util/time/DateFormat;

    .line 81
    iget-object v2, p0, Lorg/seamless/util/time/DateFormat;->pattern:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/seamless/util/time/DateFormat;->pattern:Ljava/lang/String;

    iget-object p1, p1, Lorg/seamless/util/time/DateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lorg/seamless/util/time/DateFormat;->pattern:Ljava/lang/String;

    if-eqz p1, :cond_3

    :goto_0
    return v1

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/seamless/util/time/DateFormat;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/seamless/util/time/DateFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/seamless/util/time/DateFormat;->pattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/seamless/util/time/DateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/seamless/util/time/DateFormat;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Pattern: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/seamless/util/time/DateFormat;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
