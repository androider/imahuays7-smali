.class public Lorg/fourthline/cling/model/meta/DeviceDetails;
.super Ljava/lang/Object;
.source "DeviceDetails.java"

# interfaces
.implements Lorg/fourthline/cling/model/Validatable;


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final baseURL:Ljava/net/URL;

.field private final dlnaCaps:Lorg/fourthline/cling/model/types/DLNACaps;

.field private final dlnaDocs:[Lorg/fourthline/cling/model/types/DLNADoc;

.field private final friendlyName:Ljava/lang/String;

.field private final manufacturerDetails:Lorg/fourthline/cling/model/meta/ManufacturerDetails;

.field private final modelDetails:Lorg/fourthline/cling/model/meta/ModelDetails;

.field private final presentationURI:Ljava/net/URI;

.field private final secProductCaps:Lorg/fourthline/cling/model/types/DLNACaps;

.field private final serialNumber:Ljava/lang/String;

.field private final upc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lorg/fourthline/cling/model/meta/DeviceDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/model/meta/DeviceDetails;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 50
    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/URI;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v7, p2

    .line 91
    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    .line 95
    invoke-direct/range {v0 .. v9}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 58
    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 67
    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 82
    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 121
    invoke-static {p6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 127
    invoke-static/range {p6 .. p6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V
    .locals 8

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 110
    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V
    .locals 10

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 115
    invoke-direct/range {v0 .. v9}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 87
    invoke-direct/range {v0 .. v9}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/net/URI;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    .line 100
    invoke-direct/range {v0 .. v7}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    .line 105
    invoke-direct/range {v0 .. v9}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    move-object v9, p5

    .line 72
    invoke-direct/range {v0 .. v9}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;Lorg/fourthline/cling/model/types/DLNACaps;)V
    .locals 11

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 77
    invoke-direct/range {v0 .. v10}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;Lorg/fourthline/cling/model/types/DLNACaps;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v8, p3

    move-object v9, p4

    .line 62
    invoke-direct/range {v0 .. v9}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v8, p2

    move-object v9, p3

    .line 54
    invoke-direct/range {v0 .. v9}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 134
    invoke-direct/range {v0 .. v9}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;)V
    .locals 11

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 141
    invoke-direct/range {v0 .. v10}, Lorg/fourthline/cling/model/meta/DeviceDetails;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;Lorg/fourthline/cling/model/types/DLNACaps;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Lorg/fourthline/cling/model/meta/ManufacturerDetails;Lorg/fourthline/cling/model/meta/ModelDetails;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;[Lorg/fourthline/cling/model/types/DLNADoc;Lorg/fourthline/cling/model/types/DLNACaps;Lorg/fourthline/cling/model/types/DLNACaps;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->baseURL:Ljava/net/URL;

    .line 149
    iput-object p2, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->friendlyName:Ljava/lang/String;

    if-nez p3, :cond_0

    .line 150
    new-instance p3, Lorg/fourthline/cling/model/meta/ManufacturerDetails;

    invoke-direct {p3}, Lorg/fourthline/cling/model/meta/ManufacturerDetails;-><init>()V

    :cond_0
    iput-object p3, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->manufacturerDetails:Lorg/fourthline/cling/model/meta/ManufacturerDetails;

    if-nez p4, :cond_1

    .line 151
    new-instance p4, Lorg/fourthline/cling/model/meta/ModelDetails;

    invoke-direct {p4}, Lorg/fourthline/cling/model/meta/ModelDetails;-><init>()V

    :cond_1
    iput-object p4, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->modelDetails:Lorg/fourthline/cling/model/meta/ModelDetails;

    .line 152
    iput-object p5, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->serialNumber:Ljava/lang/String;

    .line 153
    iput-object p6, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->upc:Ljava/lang/String;

    .line 154
    iput-object p7, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->presentationURI:Ljava/net/URI;

    if-eqz p8, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 155
    new-array p8, p1, [Lorg/fourthline/cling/model/types/DLNADoc;

    :goto_0
    iput-object p8, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->dlnaDocs:[Lorg/fourthline/cling/model/types/DLNADoc;

    .line 156
    iput-object p9, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->dlnaCaps:Lorg/fourthline/cling/model/types/DLNACaps;

    .line 157
    iput-object p10, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->secProductCaps:Lorg/fourthline/cling/model/types/DLNACaps;

    return-void
.end method


# virtual methods
.method public getBaseURL()Ljava/net/URL;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->baseURL:Ljava/net/URL;

    return-object v0
.end method

.method public getDlnaCaps()Lorg/fourthline/cling/model/types/DLNACaps;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->dlnaCaps:Lorg/fourthline/cling/model/types/DLNACaps;

    return-object v0
.end method

.method public getDlnaDocs()[Lorg/fourthline/cling/model/types/DLNADoc;
    .locals 1

    .line 189
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->dlnaDocs:[Lorg/fourthline/cling/model/types/DLNADoc;

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->friendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturerDetails()Lorg/fourthline/cling/model/meta/ManufacturerDetails;
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->manufacturerDetails:Lorg/fourthline/cling/model/meta/ManufacturerDetails;

    return-object v0
.end method

.method public getModelDetails()Lorg/fourthline/cling/model/meta/ModelDetails;
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->modelDetails:Lorg/fourthline/cling/model/meta/ModelDetails;

    return-object v0
.end method

.method public getPresentationURI()Ljava/net/URI;
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->presentationURI:Ljava/net/URI;

    return-object v0
.end method

.method public getSecProductCaps()Lorg/fourthline/cling/model/types/DLNACaps;
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->secProductCaps:Lorg/fourthline/cling/model/types/DLNACaps;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getUpc()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/fourthline/cling/model/meta/DeviceDetails;->upc:Ljava/lang/String;

    return-object v0
.end method

.method public validate()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/model/ValidationError;",
            ">;"
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getUpc()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 205
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getUpc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    .line 206
    sget-object v1, Lorg/fourthline/cling/model/meta/DeviceDetails;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPnP specification violation, UPC must be 12 digits: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getUpc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getUpc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    :catch_0
    sget-object v1, Lorg/fourthline/cling/model/meta/DeviceDetails;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPnP specification violation, UPC must be 12 digits all-numeric: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/fourthline/cling/model/meta/DeviceDetails;->getUpc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method
