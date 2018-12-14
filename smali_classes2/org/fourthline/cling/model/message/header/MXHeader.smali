.class public Lorg/fourthline/cling/model/message/header/MXHeader;
.super Lorg/fourthline/cling/model/message/header/UpnpHeader;
.source "MXHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/message/header/UpnpHeader<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_VALUE:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/model/message/header/MXHeader;->DEFAULT_VALUE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    .line 30
    sget-object v0, Lorg/fourthline/cling/model/message/header/MXHeader;->DEFAULT_VALUE:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/message/header/MXHeader;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/message/header/MXHeader;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/header/MXHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/message/header/InvalidHeaderException;
        }
    .end annotation

    .line 40
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, 0x78

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/message/header/MXHeader;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    sget-object p1, Lorg/fourthline/cling/model/message/header/MXHeader;->DEFAULT_VALUE:Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/message/header/MXHeader;->setValue(Ljava/lang/Object;)V

    :goto_1
    return-void

    .line 42
    :catch_0
    new-instance v0, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t parse MX seconds integer from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/fourthline/cling/model/message/header/InvalidHeaderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
