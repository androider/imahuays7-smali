.class public Lorg/fourthline/cling/binding/staging/MutableDevice;
.super Ljava/lang/Object;
.source "MutableDevice.java"


# instance fields
.field public baseURL:Ljava/net/URL;

.field public deviceType:Ljava/lang/String;

.field public dlnaCaps:Lorg/fourthline/cling/model/types/DLNACaps;

.field public dlnaDocs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/types/DLNADoc;",
            ">;"
        }
    .end annotation
.end field

.field public embeddedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fourthline/cling/binding/staging/MutableDevice;",
            ">;"
        }
    .end annotation
.end field

.field public friendlyName:Ljava/lang/String;

.field public icons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fourthline/cling/binding/staging/MutableIcon;",
            ">;"
        }
    .end annotation
.end field

.field public manufacturer:Ljava/lang/String;

.field public manufacturerURI:Ljava/net/URI;

.field public modelDescription:Ljava/lang/String;

.field public modelName:Ljava/lang/String;

.field public modelNumber:Ljava/lang/String;

.field public modelURI:Ljava/net/URI;

.field public parentDevice:Lorg/fourthline/cling/binding/staging/MutableDevice;

.field public presentationURI:Ljava/net/URI;

.field public serialNumber:Ljava/lang/String;

.field public services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/fourthline/cling/binding/staging/MutableService;",
            ">;"
        }
    .end annotation
.end field

.field public udaVersion:Lorg/fourthline/cling/binding/staging/MutableUDAVersion;

.field public udn:Lorg/fourthline/cling/model/types/UDN;

.field public upc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lorg/fourthline/cling/binding/staging/MutableUDAVersion;

    invoke-direct {v0}, Lorg/fourthline/cling/binding/staging/MutableUDAVersion;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->udaVersion:Lorg/fourthline/cling/binding/staging/MutableUDAVersion;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->dlnaDocs:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->icons:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->services:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->embeddedDevices:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build(Lorg/fourthline/cling/model/meta/Device;)Lorg/fourthline/cling/model/meta/Device;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/staging/MutableDevice;->createDeviceVersion()Lorg/fourthline/cling/model/meta/UDAVersion;

    move-result-object v0

    iget-object v1, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->baseURL:Ljava/net/URL;

    invoke-virtual {p0, p1, v0, v1}, Lorg/fourthline/cling/binding/staging/MutableDevice;->build(Lorg/fourthline/cling/model/meta/Device;Lorg/fourthline/cling/model/meta/UDAVersion;Ljava/net/URL;)Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1

    return-object p1
.end method

.method public build(Lorg/fourthline/cling/model/meta/Device;Lorg/fourthline/cling/model/meta/UDAVersion;Ljava/net/URL;)Lorg/fourthline/cling/model/meta/Device;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 69
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 70
    iget-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->embeddedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/binding/staging/MutableDevice;

    .line 71
    invoke-virtual {v1, p1, p2, p3}, Lorg/fourthline/cling/binding/staging/MutableDevice;->build(Lorg/fourthline/cling/model/meta/Device;Lorg/fourthline/cling/model/meta/UDAVersion;Ljava/net/URL;)Lorg/fourthline/cling/model/meta/Device;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :cond_0
    iget-object v1, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->udn:Lorg/fourthline/cling/model/types/UDN;

    .line 76
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/staging/MutableDevice;->createDeviceType()Lorg/fourthline/cling/model/types/DeviceType;

    move-result-object v3

    .line 77
    invoke-virtual {p0, p3}, Lorg/fourthline/cling/binding/staging/MutableDevice;->createDeviceDetails(Ljava/net/URL;)Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object v4

    .line 78
    invoke-virtual {p0}, Lorg/fourthline/cling/binding/staging/MutableDevice;->createIcons()[Lorg/fourthline/cling/model/meta/Icon;

    move-result-object v5

    .line 79
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/binding/staging/MutableDevice;->createServices(Lorg/fourthline/cling/model/meta/Device;)[Lorg/fourthline/cling/model/meta/Service;

    move-result-object v6

    move-object v0, p1

    move-object v2, p2

    .line 73
    invoke-virtual/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/Device;->newInstance(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;Ljava/util/List;)Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1

    return-object p1
.end method

.method public createDeviceDetails(Ljava/net/URL;)Lorg/fourthline/cling/model/meta/DeviceDetails;
    .locals 11

    .line 93
    new-instance v10, Lorg/fourthline/cling/model/meta/DeviceDetails;

    iget-object v2, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->friendlyName:Ljava/lang/String;

    new-instance v3, Lorg/fourthline/cling/model/meta/ManufacturerDetails;

    iget-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->manufacturer:Ljava/lang/String;

    iget-object v1, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->manufacturerURI:Ljava/net/URI;

    invoke-direct {v3, v0, v1}, Lorg/fourthline/cling/model/meta/ManufacturerDetails;-><init>(Ljava/lang/String;Ljava/net/URI;)V

    new-instance v4, Lorg/fourthline/cling/model/meta/ModelDetails;

    iget-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->modelName:Ljava/lang/String;

    iget-object v1, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->modelDescription:Ljava/lang/String;

    iget-object v5, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->modelNumber:Ljava/lang/String;

    iget-object v6, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->modelURI:Ljava/net/URI;

    invoke-direct {v4, v0, v1, v5, v6}, Lorg/fourthline/cling/model/meta/ModelDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    iget-object v5, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->serialNumber:Ljava/lang/String;

    iget-object v6, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->upc:Ljava/lang/String;

    iget-object v7, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->presentationURI:Ljava/net/URI;

    iget-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->dlnaDocs:Ljava/util/List;

    iget-object v1, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->dlnaDocs:Ljava/util/List;

    .line 98
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/fourthline/cling/model/types/DLNADoc;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Lorg/fourthline/cling/model/types/DLNADoc;

    iget-object v9, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->dlnaCaps:Lorg/fourthline/cling/model/types/DLNACaps;

    move-object v0, v10

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V

    return-object v10
.end method

.method public createDeviceType()Lorg/fourthline/cling/model/types/DeviceType;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->deviceType:Ljava/lang/String;

    invoke-static {v0}, Lorg/fourthline/cling/model/types/DeviceType;->valueOf(Ljava/lang/String;)Lorg/fourthline/cling/model/types/DeviceType;

    move-result-object v0

    return-object v0
.end method

.method public createDeviceVersion()Lorg/fourthline/cling/model/meta/UDAVersion;
    .locals 3

    .line 85
    new-instance v0, Lorg/fourthline/cling/model/meta/UDAVersion;

    iget-object v1, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->udaVersion:Lorg/fourthline/cling/binding/staging/MutableUDAVersion;

    iget v1, v1, Lorg/fourthline/cling/binding/staging/MutableUDAVersion;->major:I

    iget-object v2, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->udaVersion:Lorg/fourthline/cling/binding/staging/MutableUDAVersion;

    iget v2, v2, Lorg/fourthline/cling/binding/staging/MutableUDAVersion;->minor:I

    invoke-direct {v0, v1, v2}, Lorg/fourthline/cling/model/meta/UDAVersion;-><init>(II)V

    return-object v0
.end method

.method public createIcons()[Lorg/fourthline/cling/model/meta/Icon;
    .locals 5

    .line 103
    iget-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->icons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/fourthline/cling/model/meta/Icon;

    .line 105
    iget-object v1, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->icons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/binding/staging/MutableIcon;

    add-int/lit8 v4, v2, 0x1

    .line 106
    invoke-virtual {v3}, Lorg/fourthline/cling/binding/staging/MutableIcon;->build()Lorg/fourthline/cling/model/meta/Icon;

    move-result-object v3

    aput-object v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public createServices(Lorg/fourthline/cling/model/meta/Device;)[Lorg/fourthline/cling/model/meta/Service;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->services:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/fourthline/cling/model/meta/Device;->newServiceArray(I)[Lorg/fourthline/cling/model/meta/Service;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lorg/fourthline/cling/binding/staging/MutableDevice;->services:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/fourthline/cling/binding/staging/MutableService;

    add-int/lit8 v4, v2, 0x1

    .line 115
    invoke-virtual {v3, p1}, Lorg/fourthline/cling/binding/staging/MutableService;->build(Lorg/fourthline/cling/model/meta/Device;)Lorg/fourthline/cling/model/meta/Service;

    move-result-object v3

    aput-object v3, v0, v2

    move v2, v4

    goto :goto_0

    :cond_0
    return-object v0
.end method
