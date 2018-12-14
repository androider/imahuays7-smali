.class public Lorg/fourthline/cling/model/meta/LocalDevice;
.super Lorg/fourthline/cling/model/meta/Device;
.source "LocalDevice.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/model/meta/Device<",
        "Lorg/fourthline/cling/model/meta/DeviceIdentity;",
        "Lorg/fourthline/cling/model/meta/LocalDevice;",
        "Lorg/fourthline/cling/model/meta/LocalService;",
        ">;"
    }
.end annotation


# instance fields
.field private final deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;


# direct methods
.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;)V

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/LocalService;[Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 152
    invoke-direct/range {p0 .. p7}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    const/4 p1, 0x0

    .line 153
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/LocalService;[Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 158
    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    .line 159
    iput-object p4, p0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;Lorg/fourthline/cling/model/meta/Icon;Lorg/fourthline/cling/model/meta/LocalService;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 92
    new-array v5, v0, [Lorg/fourthline/cling/model/meta/Icon;

    const/4 v1, 0x0

    aput-object p4, v5, v1

    new-array v6, v0, [Lorg/fourthline/cling/model/meta/LocalService;

    aput-object p5, v6, v1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;Lorg/fourthline/cling/model/meta/Icon;Lorg/fourthline/cling/model/meta/LocalService;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 98
    new-array v5, v0, [Lorg/fourthline/cling/model/meta/Icon;

    const/4 v1, 0x0

    aput-object p4, v5, v1

    new-array v6, v0, [Lorg/fourthline/cling/model/meta/LocalService;

    aput-object p5, v6, v1

    new-array v7, v0, [Lorg/fourthline/cling/model/meta/LocalDevice;

    aput-object p6, v7, v1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    const/4 p1, 0x0

    .line 99
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/LocalService;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 104
    new-array v5, v0, [Lorg/fourthline/cling/model/meta/Icon;

    const/4 v0, 0x0

    aput-object p4, v5, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/LocalService;[Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 116
    new-array v5, v0, [Lorg/fourthline/cling/model/meta/Icon;

    const/4 v0, 0x0

    aput-object p4, v5, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    const/4 p1, 0x0

    .line 117
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;Lorg/fourthline/cling/model/meta/LocalService;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 56
    new-array v6, v0, [Lorg/fourthline/cling/model/meta/LocalService;

    const/4 v0, 0x0

    aput-object p4, v6, v0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;Lorg/fourthline/cling/model/meta/LocalService;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 74
    new-array v6, v0, [Lorg/fourthline/cling/model/meta/LocalService;

    const/4 v1, 0x0

    aput-object p4, v6, v1

    new-array v7, v0, [Lorg/fourthline/cling/model/meta/LocalDevice;

    aput-object p5, v7, v1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;Lorg/fourthline/cling/model/meta/LocalService;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 122
    new-array v6, v0, [Lorg/fourthline/cling/model/meta/LocalService;

    const/4 v0, 0x0

    aput-object p5, v6, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    const/4 p1, 0x0

    .line 123
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;Lorg/fourthline/cling/model/meta/LocalService;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 128
    new-array v6, v0, [Lorg/fourthline/cling/model/meta/LocalService;

    const/4 v1, 0x0

    aput-object p5, v6, v1

    new-array v7, v0, [Lorg/fourthline/cling/model/meta/LocalDevice;

    aput-object p6, v7, v1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    const/4 p1, 0x0

    .line 129
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/LocalService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 140
    invoke-direct/range {p0 .. p5}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    const/4 p1, 0x0

    .line 141
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/LocalService;[Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 146
    invoke-direct/range {p0 .. p6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    const/4 p1, 0x0

    .line 147
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/LocalService;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 80
    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/LocalService;[Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 86
    invoke-direct/range {v0 .. v6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    const/4 p1, 0x0

    .line 87
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/LocalService;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 110
    new-array v5, v0, [Lorg/fourthline/cling/model/meta/Icon;

    const/4 v0, 0x0

    aput-object p4, v5, v0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    .line 111
    iput-object p3, p0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;Lorg/fourthline/cling/model/meta/LocalService;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 62
    new-array v6, v0, [Lorg/fourthline/cling/model/meta/LocalService;

    const/4 v0, 0x0

    aput-object p4, v6, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;)V

    .line 63
    iput-object p3, p0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;Lorg/fourthline/cling/model/meta/LocalService;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 68
    new-array v6, v0, [Lorg/fourthline/cling/model/meta/LocalService;

    const/4 v1, 0x0

    aput-object p4, v6, v1

    new-array v7, v0, [Lorg/fourthline/cling/model/meta/LocalDevice;

    aput-object p5, v7, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    .line 69
    iput-object p3, p0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;[Lorg/fourthline/cling/model/meta/Icon;Lorg/fourthline/cling/model/meta/LocalService;Lorg/fourthline/cling/model/meta/LocalDevice;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 134
    new-array v6, v0, [Lorg/fourthline/cling/model/meta/LocalService;

    const/4 v1, 0x0

    aput-object p5, v6, v1

    new-array v7, v0, [Lorg/fourthline/cling/model/meta/LocalDevice;

    aput-object p6, v7, v1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lorg/fourthline/cling/model/meta/Device;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;[Lorg/fourthline/cling/model/meta/Device;)V

    .line 135
    iput-object p3, p0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-void
.end method


# virtual methods
.method public discoverResources(Lorg/fourthline/cling/model/Namespace;)[Lorg/fourthline/cling/model/resource/Resource;
    .locals 8

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/LocalDevice;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    new-instance v1, Lorg/fourthline/cling/model/resource/DeviceDescriptorResource;

    invoke-virtual {p1, p0}, Lorg/fourthline/cling/model/Namespace;->getDescriptorPath(Lorg/fourthline/cling/model/meta/Device;)Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lorg/fourthline/cling/model/resource/DeviceDescriptorResource;-><init>(Ljava/net/URI;Lorg/fourthline/cling/model/meta/LocalDevice;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/LocalDevice;->getServices()[Lorg/fourthline/cling/model/meta/LocalService;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 271
    new-instance v6, Lorg/fourthline/cling/model/resource/ServiceDescriptorResource;

    .line 272
    invoke-virtual {p1, v5}, Lorg/fourthline/cling/model/Namespace;->getDescriptorPath(Lorg/fourthline/cling/model/meta/Service;)Ljava/net/URI;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lorg/fourthline/cling/model/resource/ServiceDescriptorResource;-><init>(Ljava/net/URI;Lorg/fourthline/cling/model/meta/LocalService;)V

    .line 271
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v6, Lorg/fourthline/cling/model/resource/ServiceControlResource;

    .line 277
    invoke-virtual {p1, v5}, Lorg/fourthline/cling/model/Namespace;->getControlPath(Lorg/fourthline/cling/model/meta/Service;)Ljava/net/URI;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lorg/fourthline/cling/model/resource/ServiceControlResource;-><init>(Ljava/net/URI;Lorg/fourthline/cling/model/meta/LocalService;)V

    .line 276
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v6, Lorg/fourthline/cling/model/resource/ServiceEventSubscriptionResource;

    .line 282
    invoke-virtual {p1, v5}, Lorg/fourthline/cling/model/Namespace;->getEventSubscriptionPath(Lorg/fourthline/cling/model/meta/Service;)Ljava/net/URI;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lorg/fourthline/cling/model/resource/ServiceEventSubscriptionResource;-><init>(Ljava/net/URI;Lorg/fourthline/cling/model/meta/LocalService;)V

    .line 281
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 288
    :cond_1
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIcons()[Lorg/fourthline/cling/model/meta/Icon;

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 289
    new-instance v6, Lorg/fourthline/cling/model/resource/IconResource;

    invoke-virtual {v5}, Lorg/fourthline/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {p1, p0, v7}, Lorg/fourthline/cling/model/Namespace;->prefixIfRelative(Lorg/fourthline/cling/model/meta/Device;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lorg/fourthline/cling/model/resource/IconResource;-><init>(Ljava/net/URI;Lorg/fourthline/cling/model/meta/Icon;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 293
    :cond_2
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/LocalDevice;->hasEmbeddedDevices()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 294
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/LocalDevice;->getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/LocalDevice;

    move-result-object v1

    array-length v2, v1

    :goto_2
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 295
    invoke-virtual {v4, p1}, Lorg/fourthline/cling/model/meta/Device;->discoverResources(Lorg/fourthline/cling/model/Namespace;)[Lorg/fourthline/cling/model/resource/Resource;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 299
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/fourthline/cling/model/resource/Resource;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/fourthline/cling/model/resource/Resource;

    return-object p1
.end method

.method public bridge synthetic findDevice(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/meta/Device;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/LocalDevice;->findDevice(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/meta/LocalDevice;

    move-result-object p1

    return-object p1
.end method

.method public findDevice(Lorg/fourthline/cling/model/types/UDN;)Lorg/fourthline/cling/model/meta/LocalDevice;
    .locals 0

    .line 314
    invoke-virtual {p0, p1, p0}, Lorg/fourthline/cling/model/meta/LocalDevice;->find(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/Device;)Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1

    check-cast p1, Lorg/fourthline/cling/model/meta/LocalDevice;

    return-object p1
.end method

.method public getDetails(Lorg/fourthline/cling/model/profile/RemoteClientInfo;)Lorg/fourthline/cling/model/meta/DeviceDetails;
    .locals 1

    .line 168
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/LocalDevice;->getDeviceDetailsProvider()Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/LocalDevice;->getDeviceDetailsProvider()Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;->provide(Lorg/fourthline/cling/model/profile/RemoteClientInfo;)Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object p1

    return-object p1

    .line 171
    :cond_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/LocalDevice;->getDetails()Lorg/fourthline/cling/model/meta/DeviceDetails;

    move-result-object p1

    return-object p1
.end method

.method public getDeviceDetailsProvider()Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/LocalDevice;->deviceDetailsProvider:Lorg/fourthline/cling/model/profile/DeviceDetailsProvider;

    return-object v0
.end method

.method public bridge synthetic getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/Device;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/LocalDevice;->getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/LocalDevice;

    move-result-object v0

    return-object v0
.end method

.method public getEmbeddedDevices()[Lorg/fourthline/cling/model/meta/LocalDevice;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/LocalDevice;->embeddedDevices:[Lorg/fourthline/cling/model/meta/Device;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fourthline/cling/model/meta/LocalDevice;->embeddedDevices:[Lorg/fourthline/cling/model/meta/Device;

    check-cast v0, [Lorg/fourthline/cling/model/meta/LocalDevice;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/fourthline/cling/model/meta/LocalDevice;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getRoot()Lorg/fourthline/cling/model/meta/Device;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/LocalDevice;->getRoot()Lorg/fourthline/cling/model/meta/LocalDevice;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lorg/fourthline/cling/model/meta/LocalDevice;
    .locals 2

    .line 304
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/LocalDevice;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    move-object v0, p0

    .line 306
    :goto_0
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/LocalDevice;->getParentDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 307
    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/LocalDevice;->getParentDevice()Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0

    check-cast v0, Lorg/fourthline/cling/model/meta/LocalDevice;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getServices()[Lorg/fourthline/cling/model/meta/LocalService;
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/LocalDevice;->services:[Lorg/fourthline/cling/model/meta/Service;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/fourthline/cling/model/meta/LocalDevice;->services:[Lorg/fourthline/cling/model/meta/Service;

    check-cast v0, [Lorg/fourthline/cling/model/meta/LocalService;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/fourthline/cling/model/meta/LocalService;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getServices()[Lorg/fourthline/cling/model/meta/Service;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/LocalDevice;->getServices()[Lorg/fourthline/cling/model/meta/LocalService;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newInstance(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/Service;Ljava/util/List;)Lorg/fourthline/cling/model/meta/Device;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 45
    move-object v6, p6

    check-cast v6, [Lorg/fourthline/cling/model/meta/LocalService;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/LocalDevice;->newInstance(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/LocalService;Ljava/util/List;)Lorg/fourthline/cling/model/meta/LocalDevice;

    move-result-object p1

    return-object p1
.end method

.method public newInstance(Lorg/fourthline/cling/model/types/UDN;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/LocalService;Ljava/util/List;)Lorg/fourthline/cling/model/meta/LocalDevice;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/UDN;",
            "Lorg/fourthline/cling/model/meta/UDAVersion;",
            "Lorg/fourthline/cling/model/types/DeviceType;",
            "Lorg/fourthline/cling/model/meta/DeviceDetails;",
            "[",
            "Lorg/fourthline/cling/model/meta/Icon;",
            "[",
            "Lorg/fourthline/cling/model/meta/LocalService;",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/meta/LocalDevice;",
            ">;)",
            "Lorg/fourthline/cling/model/meta/LocalDevice;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 188
    new-instance v8, Lorg/fourthline/cling/model/meta/LocalDevice;

    new-instance v1, Lorg/fourthline/cling/model/meta/DeviceIdentity;

    .line 189
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIdentity()Lorg/fourthline/cling/model/meta/DeviceIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fourthline/cling/model/meta/DeviceIdentity;->getMaxAgeSeconds()Ljava/lang/Integer;

    move-result-object v0

    move-object v2, p1

    invoke-direct {v1, v2, v0}, Lorg/fourthline/cling/model/meta/DeviceIdentity;-><init>(Lorg/fourthline/cling/model/types/UDN;Ljava/lang/Integer;)V

    .line 192
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/fourthline/cling/model/meta/LocalDevice;

    move-object/from16 v2, p7

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/model/meta/LocalDevice;

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v0, v8

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/LocalDevice;-><init>(Lorg/fourthline/cling/model/meta/DeviceIdentity;Lorg/fourthline/cling/model/meta/UDAVersion;Lorg/fourthline/cling/model/types/DeviceType;Lorg/fourthline/cling/model/meta/DeviceDetails;[Lorg/fourthline/cling/model/meta/Icon;[Lorg/fourthline/cling/model/meta/LocalService;[Lorg/fourthline/cling/model/meta/LocalDevice;)V

    return-object v8
.end method

.method public newInstance(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)Lorg/fourthline/cling/model/meta/LocalService;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fourthline/cling/model/types/ServiceType;",
            "Lorg/fourthline/cling/model/types/ServiceId;",
            "Ljava/net/URI;",
            "Ljava/net/URI;",
            "Ljava/net/URI;",
            "[",
            "Lorg/fourthline/cling/model/meta/Action<",
            "Lorg/fourthline/cling/model/meta/LocalService;",
            ">;[",
            "Lorg/fourthline/cling/model/meta/StateVariable<",
            "Lorg/fourthline/cling/model/meta/LocalService;",
            ">;)",
            "Lorg/fourthline/cling/model/meta/LocalService;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 200
    new-instance p3, Lorg/fourthline/cling/model/meta/LocalService;

    invoke-direct {p3, p1, p2, p6, p7}, Lorg/fourthline/cling/model/meta/LocalService;-><init>(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)V

    return-object p3
.end method

.method public bridge synthetic newInstance(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)Lorg/fourthline/cling/model/meta/Service;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 45
    invoke-virtual/range {p0 .. p7}, Lorg/fourthline/cling/model/meta/LocalDevice;->newInstance(Lorg/fourthline/cling/model/types/ServiceType;Lorg/fourthline/cling/model/types/ServiceId;Ljava/net/URI;Ljava/net/URI;Ljava/net/URI;[Lorg/fourthline/cling/model/meta/Action;[Lorg/fourthline/cling/model/meta/StateVariable;)Lorg/fourthline/cling/model/meta/LocalService;

    move-result-object p1

    return-object p1
.end method

.method public newServiceArray(I)[Lorg/fourthline/cling/model/meta/LocalService;
    .locals 0

    .line 213
    new-array p1, p1, [Lorg/fourthline/cling/model/meta/LocalService;

    return-object p1
.end method

.method public bridge synthetic newServiceArray(I)[Lorg/fourthline/cling/model/meta/Service;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/LocalDevice;->newServiceArray(I)[Lorg/fourthline/cling/model/meta/LocalService;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toDeviceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/Device;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/LocalDevice;->toDeviceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/LocalDevice;

    move-result-object p1

    return-object p1
.end method

.method public toDeviceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/LocalDevice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/fourthline/cling/model/meta/LocalDevice;",
            ">;)[",
            "Lorg/fourthline/cling/model/meta/LocalDevice;"
        }
    .end annotation

    .line 208
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/fourthline/cling/model/meta/LocalDevice;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/fourthline/cling/model/meta/LocalDevice;

    return-object p1
.end method

.method public toServiceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/LocalService;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/fourthline/cling/model/meta/LocalService;",
            ">;)[",
            "Lorg/fourthline/cling/model/meta/LocalService;"
        }
    .end annotation

    .line 218
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/fourthline/cling/model/meta/LocalService;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/fourthline/cling/model/meta/LocalService;

    return-object p1
.end method

.method public bridge synthetic toServiceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/Service;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lorg/fourthline/cling/model/meta/LocalDevice;->toServiceArray(Ljava/util/Collection;)[Lorg/fourthline/cling/model/meta/LocalService;

    move-result-object p1

    return-object p1
.end method

.method public validate()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/ValidationError;",
            ">;"
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    invoke-super {p0}, Lorg/fourthline/cling/model/meta/Device;->validate()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 228
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/LocalDevice;->hasIcons()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 229
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/LocalDevice;->getIcons()[Lorg/fourthline/cling/model/meta/Icon;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 230
    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->isAbsolute()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 231
    new-instance v5, Lorg/fourthline/cling/model/ValidationError;

    .line 232
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "icons"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Local icon URI can not be absolute: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lorg/fourthline/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_0
    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "../"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 238
    new-instance v5, Lorg/fourthline/cling/model/ValidationError;

    .line 239
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "icons"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Local icon URI must not contain \'../\': "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lorg/fourthline/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_1
    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 245
    new-instance v5, Lorg/fourthline/cling/model/ValidationError;

    .line 246
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "icons"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Local icon URI must not start with \'/\': "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v4}, Lorg/fourthline/cling/model/meta/Icon;->getUri()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v7, v4}, Lorg/fourthline/cling/model/ValidationError;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    return-object v0
.end method
