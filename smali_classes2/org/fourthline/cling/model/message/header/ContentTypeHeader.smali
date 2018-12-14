.class public Lorg/fourthline/cling/model/message/header/ContentTypeHeader;
.super Lorg/fourthline/cling/model/message/header/UpnpHeader;
.source "ContentTypeHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/message/header/UpnpHeader<",
        "Lorg/seamless/util/MimeType;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CONTENT_TYPE:Lorg/seamless/util/MimeType;

.field public static final DEFAULT_CONTENT_TYPE_UTF8:Lorg/seamless/util/MimeType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "text/xml"

    .line 25
    invoke-static {v0}, Lorg/seamless/util/MimeType;->valueOf(Ljava/lang/String;)Lorg/seamless/util/MimeType;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;->DEFAULT_CONTENT_TYPE:Lorg/seamless/util/MimeType;

    const-string v0, "text/xml;charset=\"utf-8\""

    .line 26
    invoke-static {v0}, Lorg/seamless/util/MimeType;->valueOf(Ljava/lang/String;)Lorg/seamless/util/MimeType;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;->DEFAULT_CONTENT_TYPE_UTF8:Lorg/seamless/util/MimeType;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    .line 29
    sget-object v0, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;->DEFAULT_CONTENT_TYPE:Lorg/seamless/util/MimeType;

    invoke-virtual {p0, v0}, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/message/header/InvalidHeaderException;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;->setString(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/seamless/util/MimeType;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/fourthline/cling/model/message/header/UpnpHeader;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/seamless/util/MimeType;

    invoke-virtual {v0}, Lorg/seamless/util/MimeType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isText()Z
    .locals 2

    .line 54
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/seamless/util/MimeType;

    invoke-virtual {v0}, Lorg/seamless/util/MimeType;->getType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;->DEFAULT_CONTENT_TYPE:Lorg/seamless/util/MimeType;

    invoke-virtual {v1}, Lorg/seamless/util/MimeType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUDACompliantXML()Z
    .locals 2

    .line 50
    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;->isText()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/seamless/util/MimeType;

    invoke-virtual {v0}, Lorg/seamless/util/MimeType;->getSubtype()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;->DEFAULT_CONTENT_TYPE:Lorg/seamless/util/MimeType;

    invoke-virtual {v1}, Lorg/seamless/util/MimeType;->getSubtype()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/message/header/InvalidHeaderException;
        }
    .end annotation

    .line 41
    invoke-static {p1}, Lorg/seamless/util/MimeType;->valueOf(Ljava/lang/String;)Lorg/seamless/util/MimeType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/message/header/ContentTypeHeader;->setValue(Ljava/lang/Object;)V

    return-void
.end method
