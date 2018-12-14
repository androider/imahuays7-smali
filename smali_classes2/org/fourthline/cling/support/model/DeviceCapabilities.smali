.class public Lorg/fourthline/cling/support/model/DeviceCapabilities;
.super Ljava/lang/Object;
.source "DeviceCapabilities.java"


# instance fields
.field private playMedia:[Lorg/fourthline/cling/support/model/StorageMedium;

.field private recMedia:[Lorg/fourthline/cling/support/model/StorageMedium;

.field private recQualityModes:[Lorg/fourthline/cling/support/model/RecordQualityMode;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/model/action/ActionArgumentValue;",
            ">;)V"
        }
    .end annotation

    const-string v0, "PlayMedia"

    .line 34
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v0}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/fourthline/cling/support/model/StorageMedium;->valueOfCommaSeparatedList(Ljava/lang/String;)[Lorg/fourthline/cling/support/model/StorageMedium;

    move-result-object v0

    const-string v1, "RecMedia"

    .line 35
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {v1}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/fourthline/cling/support/model/StorageMedium;->valueOfCommaSeparatedList(Ljava/lang/String;)[Lorg/fourthline/cling/support/model/StorageMedium;

    move-result-object v1

    const-string v2, "RecQualityModes"

    .line 36
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/action/ActionArgumentValue;

    invoke-virtual {p1}, Lorg/fourthline/cling/model/action/ActionArgumentValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/fourthline/cling/support/model/RecordQualityMode;->valueOfCommaSeparatedList(Ljava/lang/String;)[Lorg/fourthline/cling/support/model/RecordQualityMode;

    move-result-object p1

    .line 33
    invoke-direct {p0, v0, v1, p1}, Lorg/fourthline/cling/support/model/DeviceCapabilities;-><init>([Lorg/fourthline/cling/support/model/StorageMedium;[Lorg/fourthline/cling/support/model/StorageMedium;[Lorg/fourthline/cling/support/model/RecordQualityMode;)V

    return-void
.end method

.method public constructor <init>([Lorg/fourthline/cling/support/model/StorageMedium;)V
    .locals 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 29
    new-array v1, v0, [Lorg/fourthline/cling/support/model/StorageMedium;

    sget-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/StorageMedium;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lorg/fourthline/cling/support/model/DeviceCapabilities;->recMedia:[Lorg/fourthline/cling/support/model/StorageMedium;

    .line 30
    new-array v0, v0, [Lorg/fourthline/cling/support/model/RecordQualityMode;

    sget-object v1, Lorg/fourthline/cling/support/model/RecordQualityMode;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/RecordQualityMode;

    aput-object v1, v0, v3

    iput-object v0, p0, Lorg/fourthline/cling/support/model/DeviceCapabilities;->recQualityModes:[Lorg/fourthline/cling/support/model/RecordQualityMode;

    .line 41
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DeviceCapabilities;->playMedia:[Lorg/fourthline/cling/support/model/StorageMedium;

    return-void
.end method

.method public constructor <init>([Lorg/fourthline/cling/support/model/StorageMedium;[Lorg/fourthline/cling/support/model/StorageMedium;[Lorg/fourthline/cling/support/model/RecordQualityMode;)V
    .locals 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 29
    new-array v1, v0, [Lorg/fourthline/cling/support/model/StorageMedium;

    sget-object v2, Lorg/fourthline/cling/support/model/StorageMedium;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/StorageMedium;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lorg/fourthline/cling/support/model/DeviceCapabilities;->recMedia:[Lorg/fourthline/cling/support/model/StorageMedium;

    .line 30
    new-array v0, v0, [Lorg/fourthline/cling/support/model/RecordQualityMode;

    sget-object v1, Lorg/fourthline/cling/support/model/RecordQualityMode;->NOT_IMPLEMENTED:Lorg/fourthline/cling/support/model/RecordQualityMode;

    aput-object v1, v0, v3

    iput-object v0, p0, Lorg/fourthline/cling/support/model/DeviceCapabilities;->recQualityModes:[Lorg/fourthline/cling/support/model/RecordQualityMode;

    .line 45
    iput-object p1, p0, Lorg/fourthline/cling/support/model/DeviceCapabilities;->playMedia:[Lorg/fourthline/cling/support/model/StorageMedium;

    .line 46
    iput-object p2, p0, Lorg/fourthline/cling/support/model/DeviceCapabilities;->recMedia:[Lorg/fourthline/cling/support/model/StorageMedium;

    .line 47
    iput-object p3, p0, Lorg/fourthline/cling/support/model/DeviceCapabilities;->recQualityModes:[Lorg/fourthline/cling/support/model/RecordQualityMode;

    return-void
.end method


# virtual methods
.method public getPlayMedia()[Lorg/fourthline/cling/support/model/StorageMedium;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DeviceCapabilities;->playMedia:[Lorg/fourthline/cling/support/model/StorageMedium;

    return-object v0
.end method

.method public getPlayMediaString()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DeviceCapabilities;->playMedia:[Lorg/fourthline/cling/support/model/StorageMedium;

    invoke-static {v0}, Lorg/fourthline/cling/model/ModelUtil;->toCommaSeparatedList([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecMedia()[Lorg/fourthline/cling/support/model/StorageMedium;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DeviceCapabilities;->recMedia:[Lorg/fourthline/cling/support/model/StorageMedium;

    return-object v0
.end method

.method public getRecMediaString()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DeviceCapabilities;->recMedia:[Lorg/fourthline/cling/support/model/StorageMedium;

    invoke-static {v0}, Lorg/fourthline/cling/model/ModelUtil;->toCommaSeparatedList([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecQualityModes()[Lorg/fourthline/cling/support/model/RecordQualityMode;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DeviceCapabilities;->recQualityModes:[Lorg/fourthline/cling/support/model/RecordQualityMode;

    return-object v0
.end method

.method public getRecQualityModesString()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/fourthline/cling/support/model/DeviceCapabilities;->recQualityModes:[Lorg/fourthline/cling/support/model/RecordQualityMode;

    invoke-static {v0}, Lorg/fourthline/cling/model/ModelUtil;->toCommaSeparatedList([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
