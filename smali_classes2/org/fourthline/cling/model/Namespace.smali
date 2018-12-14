.class public Lorg/fourthline/cling/model/Namespace;
.super Ljava/lang/Object;
.source "Namespace.java"


# static fields
.field public static final CALLBACK_FILE:Ljava/lang/String; = "/cb"

.field public static final CONTROL:Ljava/lang/String; = "/action"

.field public static final DESCRIPTOR_FILE:Ljava/lang/String; = "/desc"

.field public static final DEVICE:Ljava/lang/String; = "/dev"

.field public static final EVENTS:Ljava/lang/String; = "/event"

.field public static final SERVICE:Ljava/lang/String; = "/svc"

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field protected final basePath:Ljava/net/URI;

.field protected final decodedPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-class v0, Lorg/fourthline/cling/model/Namespace;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/model/Namespace;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 74
    invoke-direct {p0, v0}, Lorg/fourthline/cling/model/Namespace;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/Namespace;-><init>(Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lorg/fourthline/cling/model/Namespace;->basePath:Ljava/net/URI;

    .line 83
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/model/Namespace;->decodedPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected appendPathToBaseURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 9

    .line 183
    :try_start_0
    new-instance v8, Ljava/net/URI;

    iget-object v0, p0, Lorg/fourthline/cling/model/Namespace;->basePath:Ljava/net/URI;

    .line 185
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/fourthline/cling/model/Namespace;->basePath:Ljava/net/URI;

    .line 187
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lorg/fourthline/cling/model/Namespace;->basePath:Ljava/net/URI;

    .line 188
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/fourthline/cling/model/Namespace;->decodedPath:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    .line 194
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/fourthline/cling/model/Namespace;->basePath:Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    return-object p1
.end method

.method public getBasePath()Ljava/net/URI;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/fourthline/cling/model/Namespace;->basePath:Ljava/net/URI;

    return-object v0
.end method

.method public getControlPath(Lorg/fourthline/cling/model/meta/Service;)Ljava/net/URI;
    .locals 1

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/Namespace;->getServicePath(Lorg/fourthline/cling/model/meta/Service;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/action"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/Namespace;->appendPathToBaseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptorPath(Lorg/fourthline/cling/model/meta/Device;)Ljava/net/URI;
    .locals 1

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->getRoot()Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/Namespace;->getDevicePath(Lorg/fourthline/cling/model/meta/Device;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/desc"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/Namespace;->appendPathToBaseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptorPath(Lorg/fourthline/cling/model/meta/Service;)Ljava/net/URI;
    .locals 1

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/Namespace;->getServicePath(Lorg/fourthline/cling/model/meta/Service;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/desc"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/Namespace;->appendPathToBaseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptorPathString(Lorg/fourthline/cling/model/meta/Device;)Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/fourthline/cling/model/Namespace;->decodedPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->getRoot()Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/Namespace;->getDevicePath(Lorg/fourthline/cling/model/meta/Device;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/desc"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getDevicePath(Lorg/fourthline/cling/model/meta/Device;)Ljava/lang/String;
    .locals 2

    .line 199
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object v0

    if-nez v0, :cond_0

    .line 200
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t generate local URI prefix without UDN"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/dev"

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getUdn()Lorg/fourthline/cling/model/types/UDN;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fourthline/cling/model/types/UDN;->getIdentifierString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/seamless/util/URIUtil;->encodePathSegment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEventCallbackPath(Lorg/fourthline/cling/model/meta/Service;)Ljava/net/URI;
    .locals 1

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/Namespace;->getServicePath(Lorg/fourthline/cling/model/meta/Service;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/event"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/cb"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/Namespace;->appendPathToBaseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    return-object p1
.end method

.method public getEventCallbackPathString(Lorg/fourthline/cling/model/meta/Service;)Ljava/lang/String;
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/fourthline/cling/model/Namespace;->decodedPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/Namespace;->getServicePath(Lorg/fourthline/cling/model/meta/Service;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/event"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/cb"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEventSubscriptionPath(Lorg/fourthline/cling/model/meta/Service;)Ljava/net/URI;
    .locals 1

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/Namespace;->getServicePath(Lorg/fourthline/cling/model/meta/Service;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/event"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/Namespace;->appendPathToBaseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    return-object p1
.end method

.method public getIconPath(Lorg/fourthline/cling/model/meta/Icon;)Ljava/net/URI;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Icon;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/fourthline/cling/model/Namespace;->getDevicePath(Lorg/fourthline/cling/model/meta/Device;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/Namespace;->appendPathToBaseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    return-object p1
.end method

.method public getPath(Lorg/fourthline/cling/model/meta/Device;)Ljava/net/URI;
    .locals 0

    .line 91
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/Namespace;->getDevicePath(Lorg/fourthline/cling/model/meta/Device;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/Namespace;->appendPathToBaseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    return-object p1
.end method

.method public getPath(Lorg/fourthline/cling/model/meta/Service;)Ljava/net/URI;
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/Namespace;->getServicePath(Lorg/fourthline/cling/model/meta/Service;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/Namespace;->appendPathToBaseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    return-object p1
.end method

.method public getResources(Lorg/fourthline/cling/model/meta/Device;)[Lorg/fourthline/cling/model/resource/Resource;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 156
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Device;->isRoot()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 158
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 161
    sget-object v2, Lorg/fourthline/cling/model/Namespace;->log:Ljava/util/logging/Logger;

    const-string v3, "Discovering local resources of device graph"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1, p0}, Lorg/fourthline/cling/model/meta/Device;->discoverResources(Lorg/fourthline/cling/model/Namespace;)[Lorg/fourthline/cling/model/resource/Resource;

    move-result-object p1

    .line 163
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 164
    sget-object v5, Lorg/fourthline/cling/model/Namespace;->log:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Discovered: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 165
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 166
    sget-object v5, Lorg/fourthline/cling/model/Namespace;->log:Ljava/util/logging/Logger;

    const-string v6, "Local resource already exists, queueing validation error"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 167
    new-instance v5, Lorg/fourthline/cling/model/ValidationError;

    .line 168
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "resources"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Local URI namespace conflict between resources of device: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v7, v4}, Lorg/fourthline/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 174
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 175
    new-instance p1, Lorg/fourthline/cling/model/ValidationException;

    const-string v0, "Validation of device graph failed, call getErrors() on exception"

    invoke-direct {p1, v0, v1}, Lorg/fourthline/cling/model/ValidationException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    throw p1

    .line 177
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Lorg/fourthline/cling/model/resource/Resource;

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/fourthline/cling/model/resource/Resource;

    return-object p1
.end method

.method protected getServicePath(Lorg/fourthline/cling/model/meta/Service;)Ljava/lang/String;
    .locals 2

    .line 210
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Service;->getServiceId()Lorg/fourthline/cling/model/types/ServiceId;

    move-result-object v0

    if-nez v0, :cond_0

    .line 211
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t generate local URI prefix without service ID"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 213
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/svc"

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Service;->getServiceId()Lorg/fourthline/cling/model/types/ServiceId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/types/ServiceId;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Service;->getServiceId()Lorg/fourthline/cling/model/types/ServiceId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fourthline/cling/model/types/ServiceId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/fourthline/cling/model/meta/Service;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/Namespace;->getDevicePath(Lorg/fourthline/cling/model/meta/Device;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isControlPath(Ljava/net/URI;)Z
    .locals 1

    .line 144
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isEventCallbackPath(Ljava/net/URI;)Z
    .locals 1

    .line 152
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/cb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isEventSubscriptionPath(Ljava/net/URI;)Z
    .locals 1

    .line 148
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/event"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public prefixIfRelative(Lorg/fourthline/cling/model/meta/Device;Ljava/net/URI;)Ljava/net/URI;
    .locals 2

    .line 137
    invoke-virtual {p2}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/Namespace;->getDevicePath(Lorg/fourthline/cling/model/meta/Device;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/Namespace;->appendPathToBaseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method
