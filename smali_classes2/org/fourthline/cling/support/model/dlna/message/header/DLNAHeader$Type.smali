.class public final enum Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;
.super Ljava/lang/Enum;
.source "DLNAHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum AvailableRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum AvailableSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum BufferInfo:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum ContentFeatures:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum EventType:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum FriendlyName:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum GetAvailableSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum GetContentFeatures:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum MaxPrate:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum PRAGMA:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum PeerManager:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum PlaySpeed:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum RTPAACDeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum RTPAMRDeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum RTPAMRWBPlusDeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum RTPH264DeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum RealTimeInfo:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum SCID:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum ScmsFlag:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum Supported:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum TimeSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum TransferMode:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum WCT:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field public static final enum XSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

.field private static byName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private headerTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;",
            ">;"
        }
    .end annotation
.end field

.field private httpName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 46
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "TimeSeekRange"

    const-string v2, "TimeSeekRange.dlna.org"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lorg/fourthline/cling/support/model/dlna/message/header/TimeSeekRangeHeader;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v6, v2, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->TimeSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 47
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "XSeekRange"

    const-string v2, "X-Seek-Range"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lorg/fourthline/cling/support/model/dlna/message/header/TimeSeekRangeHeader;

    aput-object v5, v4, v6

    invoke-direct {v0, v1, v3, v2, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->XSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 48
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "PlaySpeed"

    const-string v2, "PlaySpeed.dlna.org"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lorg/fourthline/cling/support/model/dlna/message/header/PlaySpeedHeader;

    aput-object v5, v4, v6

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->PlaySpeed:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 49
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "AvailableSeekRange"

    const-string v2, "availableSeekRange.dlna.org"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v7, Lorg/fourthline/cling/support/model/dlna/message/header/AvailableSeekRangeHeader;

    aput-object v7, v4, v6

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->AvailableSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 50
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "GetAvailableSeekRange"

    const-string v2, "getAvailableSeekRange.dlna.org"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v8, Lorg/fourthline/cling/support/model/dlna/message/header/GetAvailableSeekRangeHeader;

    aput-object v8, v4, v6

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8, v2, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->GetAvailableSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 51
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "GetContentFeatures"

    const-string v2, "getcontentFeatures.dlna.org"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v9, Lorg/fourthline/cling/support/model/dlna/message/header/GetContentFeaturesHeader;

    aput-object v9, v4, v6

    const/4 v9, 0x5

    invoke-direct {v0, v1, v9, v2, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->GetContentFeatures:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 52
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "ContentFeatures"

    const-string v2, "contentFeatures.dlna.org"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v10, Lorg/fourthline/cling/support/model/dlna/message/header/ContentFeaturesHeader;

    aput-object v10, v4, v6

    const/4 v10, 0x6

    invoke-direct {v0, v1, v10, v2, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->ContentFeatures:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 53
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "TransferMode"

    const-string v2, "transferMode.dlna.org"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v11, Lorg/fourthline/cling/support/model/dlna/message/header/TransferModeHeader;

    aput-object v11, v4, v6

    const/4 v11, 0x7

    invoke-direct {v0, v1, v11, v2, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->TransferMode:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 54
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "FriendlyName"

    const-string v2, "friendlyName.dlna.org"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v12, Lorg/fourthline/cling/support/model/dlna/message/header/FriendlyNameHeader;

    aput-object v12, v4, v6

    const/16 v12, 0x8

    invoke-direct {v0, v1, v12, v2, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->FriendlyName:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 55
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "PeerManager"

    const-string v2, "peerManager.dlna.org"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v13, Lorg/fourthline/cling/support/model/dlna/message/header/PeerManagerHeader;

    aput-object v13, v4, v6

    const/16 v13, 0x9

    invoke-direct {v0, v1, v13, v2, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->PeerManager:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 56
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "AvailableRange"

    const-string v2, "Available-Range.dlna.org"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v14, Lorg/fourthline/cling/support/model/dlna/message/header/AvailableRangeHeader;

    aput-object v14, v4, v6

    const/16 v14, 0xa

    invoke-direct {v0, v1, v14, v2, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->AvailableRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 57
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "SCID"

    const-string v2, "scid.dlna.org"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v15, Lorg/fourthline/cling/support/model/dlna/message/header/SCIDHeader;

    aput-object v15, v4, v6

    const/16 v15, 0xb

    invoke-direct {v0, v1, v15, v2, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->SCID:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 58
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "RealTimeInfo"

    const-string v2, "realTimeInfo.dlna.org"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v16, Lorg/fourthline/cling/support/model/dlna/message/header/RealTimeInfoHeader;

    aput-object v16, v4, v6

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->RealTimeInfo:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 59
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "ScmsFlag"

    const-string v2, "scmsFlag.dlna.org"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v16, Lorg/fourthline/cling/support/model/dlna/message/header/ScmsFlagHeader;

    aput-object v16, v4, v6

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v2, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->ScmsFlag:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 60
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "WCT"

    const-string v2, "WCT.dlna.org"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v16, Lorg/fourthline/cling/support/model/dlna/message/header/WCTHeader;

    aput-object v16, v4, v6

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v2, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->WCT:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 61
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "MaxPrate"

    const-string v2, "Max-Prate.dlna.org"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v16, Lorg/fourthline/cling/support/model/dlna/message/header/MaxPrateHeader;

    aput-object v16, v4, v6

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v2, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->MaxPrate:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 62
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "EventType"

    const-string v2, "Event-Type.dlna.org"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v15, Lorg/fourthline/cling/support/model/dlna/message/header/EventTypeHeader;

    aput-object v15, v4, v6

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v2, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->EventType:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 63
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "Supported"

    const-string v2, "Supported"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v15, Lorg/fourthline/cling/support/model/dlna/message/header/SupportedHeader;

    aput-object v15, v4, v6

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v2, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->Supported:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 64
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "BufferInfo"

    const-string v2, "Buffer-Info.dlna.org"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v15, Lorg/fourthline/cling/support/model/dlna/message/header/BufferInfoHeader;

    aput-object v15, v4, v6

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v2, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->BufferInfo:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 65
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "RTPH264DeInterleaving"

    const-string v2, "rtp-h264-deint-buf-cap.dlna.org"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v15, Lorg/fourthline/cling/support/model/dlna/message/header/BufferBytesHeader;

    aput-object v15, v4, v6

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15, v2, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->RTPH264DeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 66
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "RTPAACDeInterleaving"

    const-string v2, "rtp-aac-deint-buf-cap.dlna.org"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v15, Lorg/fourthline/cling/support/model/dlna/message/header/BufferBytesHeader;

    aput-object v15, v4, v6

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15, v2, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->RTPAACDeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 67
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "RTPAMRDeInterleaving"

    const-string v2, "rtp-amr-deint-buf-cap.dlna.org"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v15, Lorg/fourthline/cling/support/model/dlna/message/header/BufferBytesHeader;

    aput-object v15, v4, v6

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15, v2, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->RTPAMRDeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 68
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "RTPAMRWBPlusDeInterleaving"

    const-string v2, "rtp-amrwbplus-deint-buf-cap.dlna.org"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v15, Lorg/fourthline/cling/support/model/dlna/message/header/BufferBytesHeader;

    aput-object v15, v4, v6

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15, v2, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->RTPAMRWBPlusDeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 69
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const-string v1, "PRAGMA"

    const-string v2, "PRAGMA"

    new-array v4, v3, [Ljava/lang/Class;

    const-class v15, Lorg/fourthline/cling/support/model/dlna/message/header/PragmaHeader;

    aput-object v15, v4, v6

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15, v2, v4}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->PRAGMA:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const/16 v0, 0x18

    .line 44
    new-array v0, v0, [Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->TimeSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v1, v0, v6

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->XSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->PlaySpeed:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v1, v0, v5

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->AvailableSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v1, v0, v7

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->GetAvailableSeekRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v1, v0, v8

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->GetContentFeatures:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v1, v0, v9

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->ContentFeatures:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v1, v0, v10

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->TransferMode:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v1, v0, v11

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->FriendlyName:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v1, v0, v12

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->PeerManager:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v1, v0, v13

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->AvailableRange:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    aput-object v1, v0, v14

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->SCID:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->RealTimeInfo:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->ScmsFlag:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->WCT:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->MaxPrate:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->EventType:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->Supported:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->BufferInfo:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->RTPH264DeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->RTPAACDeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->RTPAMRDeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->RTPAMRWBPlusDeInterleaving:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->PRAGMA:Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->$VALUES:[Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    .line 71
    new-instance v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type$1;

    invoke-direct {v0}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type$1;-><init>()V

    sput-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->byName:Ljava/util/Map;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    iput-object p3, p0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->httpName:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->headerTypes:[Ljava/lang/Class;

    return-void
.end method

.method public static getByHttpName(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 108
    :cond_0
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->byName:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;
    .locals 1

    .line 44
    const-class v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    return-object p0
.end method

.method public static values()[Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;
    .locals 1

    .line 44
    sget-object v0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->$VALUES:[Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    invoke-virtual {v0}, [Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;

    return-object v0
.end method


# virtual methods
.method public getHeaderTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->headerTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public getHttpName()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->httpName:Ljava/lang/String;

    return-object v0
.end method

.method public isValidHeaderType(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader;",
            ">;)Z"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lorg/fourthline/cling/support/model/dlna/message/header/DLNAHeader$Type;->getHeaderTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 96
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
