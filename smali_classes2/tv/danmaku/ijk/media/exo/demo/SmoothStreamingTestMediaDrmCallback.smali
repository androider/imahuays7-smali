.class public Ltv/danmaku/ijk/media/exo/demo/SmoothStreamingTestMediaDrmCallback;
.super Ljava/lang/Object;
.source "SmoothStreamingTestMediaDrmCallback.java"

# interfaces
.implements Lcom/google/android/exoplayer/drm/MediaDrmCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final KEY_REQUEST_PROPERTIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PLAYREADY_TEST_DEFAULT_URI:Ljava/lang/String; = "http://playready.directtaps.net/pr/svc/rightsmanager.asmx"

.field private static final PROVISIONING_REQUEST_PROPERTIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "Content-Type"

    const-string v1, "application/octet-stream"

    .line 40
    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ltv/danmaku/ijk/media/exo/demo/SmoothStreamingTestMediaDrmCallback;->PROVISIONING_REQUEST_PROPERTIES:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Content-Type"

    const-string v2, "text/xml"

    .line 44
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SOAPAction"

    const-string v2, "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense"

    .line 45
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sput-object v0, Ltv/danmaku/ijk/media/exo/demo/SmoothStreamingTestMediaDrmCallback;->KEY_REQUEST_PROPERTIES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeKeyRequest(Ljava/util/UUID;Lcom/google/android/exoplayer/drm/ExoMediaDrm$KeyRequest;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    invoke-interface {p2}, Lcom/google/android/exoplayer/drm/ExoMediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "http://playready.directtaps.net/pr/svc/rightsmanager.asmx"

    .line 62
    :cond_0
    invoke-interface {p2}, Lcom/google/android/exoplayer/drm/ExoMediaDrm$KeyRequest;->getData()[B

    move-result-object p2

    sget-object v0, Ltv/danmaku/ijk/media/exo/demo/SmoothStreamingTestMediaDrmCallback;->KEY_REQUEST_PROPERTIES:Ljava/util/Map;

    invoke-static {p1, p2, v0}, Lcom/google/android/exoplayer/util/Util;->executePost(Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object p1

    return-object p1
.end method

.method public executeProvisionRequest(Ljava/util/UUID;Lcom/google/android/exoplayer/drm/ExoMediaDrm$ProvisionRequest;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lcom/google/android/exoplayer/drm/ExoMediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&signedRequest="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    invoke-interface {p2}, Lcom/google/android/exoplayer/drm/ExoMediaDrm$ProvisionRequest;->getData()[B

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 53
    sget-object p2, Ltv/danmaku/ijk/media/exo/demo/SmoothStreamingTestMediaDrmCallback;->PROVISIONING_REQUEST_PROPERTIES:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/google/android/exoplayer/util/Util;->executePost(Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object p1

    return-object p1
.end method
