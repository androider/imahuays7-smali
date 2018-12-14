.class public Lcom/mh/movie/core/androidupnp/a/a;
.super Ljava/lang/Object;
.source "ClingPlayControl.java"


# static fields
.field private static final a:Ljava/lang/String; = "a"


# instance fields
.field private b:J

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 52
    iput-wide v0, p0, Lcom/mh/movie/core/androidupnp/a/a;->b:J

    const/4 v0, 0x3

    .line 56
    iput v0, p0, Lcom/mh/movie/core/androidupnp/a/a;->c:I

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 416
    new-instance p4, Lorg/fourthline/cling/support/model/Res;

    new-instance v0, Lorg/seamless/util/MimeType;

    const-string v1, "*"

    const-string v2, "*"

    invoke-direct {v0, v1, v2}, Lorg/seamless/util/MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p4, v0, v1, p1}, Lorg/fourthline/cling/support/model/Res;-><init>(Lorg/seamless/util/MimeType;Ljava/lang/Long;Ljava/lang/String;)V

    const-string v6, "unknow"

    .line 420
    new-instance p1, Lorg/fourthline/cling/support/model/item/VideoItem;

    const-string v4, "0"

    const/4 v0, 0x1

    new-array v7, v0, [Lorg/fourthline/cling/support/model/Res;

    const/4 v0, 0x0

    aput-object p4, v7, v0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lorg/fourthline/cling/support/model/item/VideoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V

    .line 422
    invoke-direct {p0, p1}, Lcom/mh/movie/core/androidupnp/a/a;->a(Lorg/fourthline/cling/support/model/DIDLObject;)Ljava/lang/String;

    move-result-object p1

    .line 423
    sget-object p2, Lcom/mh/movie/core/androidupnp/a/a;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "metadata: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private a(Lorg/fourthline/cling/support/model/DIDLObject;)Ljava/lang/String;
    .locals 10

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<?xml version=\"1.0\"?><DIDL-Lite xmlns=\"urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:upnp=\"urn:schemas-upnp-org:metadata-1-0/upnp/\" xmlns:dlna=\"urn:schemas-dlna-org:metadata-1-0/\">"

    .line 429
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<item id=\"%s\" parentID=\"%s\" restricted=\"%s\">"

    const/4 v2, 0x3

    .line 431
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getParentID()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->isRestricted()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "1"

    goto :goto_0

    :cond_0
    const-string v4, "0"

    :goto_0
    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<dc:title>%s</dc:title>"

    .line 433
    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getCreator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "<"

    const-string v4, "_"

    .line 436
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ">"

    const-string v4, "_"

    .line 437
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v3, "<upnp:artist>%s</upnp:artist>"

    .line 439
    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<upnp:class>%s</upnp:class>"

    .line 441
    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getClazz()Lorg/fourthline/cling/support/model/DIDLObject$Class;

    move-result-object v4

    invoke-virtual {v4}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 444
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 445
    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "<dc:date>%s</dc:date>"

    .line 446
    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/DIDLObject;->getFirstResource()Lorg/fourthline/cling/support/model/Res;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v1, ""

    .line 458
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getProtocolInfo()Lorg/fourthline/cling/support/model/ProtocolInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v1, "protocolInfo=\"%s:%s:%s:%s\""

    const/4 v4, 0x4

    .line 460
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3}, Lorg/fourthline/cling/support/model/ProtocolInfo;->getProtocol()Lorg/fourthline/cling/support/model/Protocol;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-virtual {v3}, Lorg/fourthline/cling/support/model/ProtocolInfo;->getNetwork()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-virtual {v3}, Lorg/fourthline/cling/support/model/ProtocolInfo;->getContentFormatMimeType()Lorg/seamless/util/MimeType;

    move-result-object v8

    aput-object v8, v4, v7

    .line 461
    invoke-virtual {v3}, Lorg/fourthline/cling/support/model/ProtocolInfo;->getAdditionalInfo()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 460
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 463
    :cond_2
    sget-object v3, Lcom/mh/movie/core/androidupnp/a/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "protocolinfo: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, ""

    .line 467
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getResolution()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getResolution()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    const-string v3, "resolution=\"%s\""

    .line 468
    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getResolution()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    const-string v4, ""

    .line 473
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getDuration()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getDuration()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    const-string v4, "duration=\"%s\""

    .line 474
    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getDuration()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_4
    const-string v8, "<res %s %s %s>"

    .line 479
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v5

    aput-object v3, v2, v6

    aput-object v4, v2, v7

    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {p1}, Lorg/fourthline/cling/support/model/Res;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 483
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</res>"

    .line 486
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string p1, "</item>"

    .line 488
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</DIDL-Lite>"

    .line 490
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/mh/movie/core/androidupnp/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mh/movie/core/androidupnp/a/a/a;)V
    .locals 0

    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/mh/movie/core/androidupnp/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mh/movie/core/androidupnp/a/a/a;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mh/movie/core/androidupnp/a/a/a;)V
    .locals 7

    .line 295
    invoke-static {p1}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 299
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mh/movie/core/androidupnp/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 301
    sget-object p2, Lcom/mh/movie/core/androidupnp/service/b/a;->a:Lorg/fourthline/cling/model/types/ServiceType;

    invoke-static {p2}, Lcom/mh/movie/core/androidupnp/d/a;->a(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v3

    .line 302
    invoke-static {v3}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 306
    :cond_1
    invoke-static {}, Lcom/mh/movie/core/androidupnp/d/a;->a()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object p2

    .line 307
    invoke-static {p2}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    .line 311
    :cond_2
    new-instance p3, Lcom/mh/movie/core/androidupnp/a/a$7;

    move-object v1, p3

    move-object v2, p0

    move-object v4, p1

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/mh/movie/core/androidupnp/a/a$7;-><init>(Lcom/mh/movie/core/androidupnp/a/a;Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;Lcom/mh/movie/core/androidupnp/a/a/a;)V

    invoke-interface {p2, p3}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 404
    iget v0, p0, Lcom/mh/movie/core/androidupnp/a/a;->c:I

    return v0
.end method

.method public a(I)V
    .locals 1

    .line 408
    iget v0, p0, Lcom/mh/movie/core/androidupnp/a/a;->c:I

    if-eq v0, p1, :cond_0

    .line 409
    iput p1, p0, Lcom/mh/movie/core/androidupnp/a/a;->c:I

    :cond_0
    return-void
.end method

.method public a(ILcom/mh/movie/core/androidupnp/a/a/a;)V
    .locals 6

    .line 189
    sget-object v0, Lcom/mh/movie/core/androidupnp/service/b/a;->a:Lorg/fourthline/cling/model/types/ServiceType;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/a;->a(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    .line 190
    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-static {}, Lcom/mh/movie/core/androidupnp/d/a;->a()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v1

    .line 195
    invoke-static {v1}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 199
    :cond_1
    invoke-static {p1}, Lcom/mh/movie/core/androidupnp/d/b;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 200
    sget-object v3, Lcom/mh/movie/core/androidupnp/a/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "seek->pos: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", time: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance p1, Lcom/mh/movie/core/androidupnp/a/a$5;

    invoke-direct {p1, p0, v0, v2, p2}, Lcom/mh/movie/core/androidupnp/a/a$5;-><init>(Lcom/mh/movie/core/androidupnp/a/a;Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Lcom/mh/movie/core/androidupnp/a/a/a;)V

    invoke-interface {v1, p1}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(Lcom/mh/movie/core/androidupnp/a/a/a;)V
    .locals 3

    .line 96
    sget-object v0, Lcom/mh/movie/core/androidupnp/service/b/a;->a:Lorg/fourthline/cling/model/types/ServiceType;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/a;->a(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-static {}, Lcom/mh/movie/core/androidupnp/d/a;->a()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v1

    .line 102
    invoke-static {v1}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 106
    :cond_1
    new-instance v2, Lcom/mh/movie/core/androidupnp/a/a$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/mh/movie/core/androidupnp/a/a$2;-><init>(Lcom/mh/movie/core/androidupnp/a/a;Lorg/fourthline/cling/model/meta/Service;Lcom/mh/movie/core/androidupnp/a/a/a;)V

    invoke-interface {v1, v2}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(Lcom/mh/movie/core/androidupnp/a/a/b;)V
    .locals 3

    .line 333
    sget-object v0, Lcom/mh/movie/core/androidupnp/service/b/a;->a:Lorg/fourthline/cling/model/types/ServiceType;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/a;->a(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    .line 334
    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 338
    :cond_0
    sget-object v1, Lcom/mh/movie/core/androidupnp/a/a;->a:Ljava/lang/String;

    const-string v2, "Found media render service in device, sending get position"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v1, Lcom/mh/movie/core/androidupnp/a/a$8;

    invoke-direct {v1, p0, v0, p1}, Lcom/mh/movie/core/androidupnp/a/a$8;-><init>(Lcom/mh/movie/core/androidupnp/a/a;Lorg/fourthline/cling/model/meta/Service;Lcom/mh/movie/core/androidupnp/a/a/b;)V

    .line 364
    invoke-static {}, Lcom/mh/movie/core/androidupnp/d/a;->a()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object p1

    .line 365
    invoke-static {p1}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 369
    :cond_1
    invoke-interface {p1, v1}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mh/movie/core/androidupnp/a/a/a;)V
    .locals 8

    .line 66
    new-instance v7, Lcom/mh/movie/core/androidupnp/a/a$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/mh/movie/core/androidupnp/a/a$1;-><init>(Lcom/mh/movie/core/androidupnp/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mh/movie/core/androidupnp/a/a/a;)V

    invoke-virtual {p0, v7}, Lcom/mh/movie/core/androidupnp/a/a;->c(Lcom/mh/movie/core/androidupnp/a/a/a;)V

    return-void
.end method

.method public b(ILcom/mh/movie/core/androidupnp/a/a/a;)V
    .locals 8
    .param p2    # Lcom/mh/movie/core/androidupnp/a/a/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 224
    iget-wide v2, p0, Lcom/mh/movie/core/androidupnp/a/a;->b:J

    const-wide/16 v4, 0x0

    add-long v6, v2, v4

    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    .line 225
    iput-wide v0, p0, Lcom/mh/movie/core/androidupnp/a/a;->b:J

    .line 227
    sget-object v0, Lcom/mh/movie/core/androidupnp/service/b/a;->b:Lorg/fourthline/cling/model/types/ServiceType;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/a;->a(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v3

    .line 228
    invoke-static {v3}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 232
    :cond_0
    invoke-static {}, Lcom/mh/movie/core/androidupnp/d/a;->a()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v0

    .line 233
    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 237
    :cond_1
    new-instance v7, Lcom/mh/movie/core/androidupnp/a/a$6;

    int-to-long v4, p1

    move-object v1, v7

    move-object v2, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/mh/movie/core/androidupnp/a/a$6;-><init>(Lcom/mh/movie/core/androidupnp/a/a;Lorg/fourthline/cling/model/meta/Service;JLcom/mh/movie/core/androidupnp/a/a/a;)V

    invoke-interface {v0, v7}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    :cond_2
    return-void
.end method

.method public b(Lcom/mh/movie/core/androidupnp/a/a/a;)V
    .locals 3

    .line 127
    sget-object v0, Lcom/mh/movie/core/androidupnp/service/b/a;->a:Lorg/fourthline/cling/model/types/ServiceType;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/a;->a(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    .line 128
    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-static {}, Lcom/mh/movie/core/androidupnp/d/a;->a()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v1

    .line 133
    invoke-static {v1}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 137
    :cond_1
    new-instance v2, Lcom/mh/movie/core/androidupnp/a/a$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/mh/movie/core/androidupnp/a/a$3;-><init>(Lcom/mh/movie/core/androidupnp/a/a;Lorg/fourthline/cling/model/meta/Service;Lcom/mh/movie/core/androidupnp/a/a/a;)V

    invoke-interface {v1, v2}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public c(Lcom/mh/movie/core/androidupnp/a/a/a;)V
    .locals 3

    .line 158
    sget-object v0, Lcom/mh/movie/core/androidupnp/service/b/a;->a:Lorg/fourthline/cling/model/types/ServiceType;

    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/a;->a(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    .line 159
    invoke-static {v0}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 163
    :cond_0
    invoke-static {}, Lcom/mh/movie/core/androidupnp/d/a;->a()Lorg/fourthline/cling/controlpoint/ControlPoint;

    move-result-object v1

    .line 164
    invoke-static {v1}, Lcom/mh/movie/core/androidupnp/d/b;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 168
    :cond_1
    new-instance v2, Lcom/mh/movie/core/androidupnp/a/a$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/mh/movie/core/androidupnp/a/a$4;-><init>(Lcom/mh/movie/core/androidupnp/a/a;Lorg/fourthline/cling/model/meta/Service;Lcom/mh/movie/core/androidupnp/a/a/a;)V

    invoke-interface {v1, v2}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    return-void
.end method
