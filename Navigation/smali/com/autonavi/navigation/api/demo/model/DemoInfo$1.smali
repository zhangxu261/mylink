.class final Lcom/autonavi/navigation/api/demo/model/DemoInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/demo/model/DemoInfo;
    .locals 3

    new-instance v0, Lcom/autonavi/navigation/api/demo/model/DemoInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/autonavi/navigation/api/demo/model/DemoItem;->CREATOR:Lcom/autonavi/navigation/api/demo/model/DemoItem$a;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/autonavi/navigation/api/demo/model/DemoInfo;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public a(I)[Lcom/autonavi/navigation/api/demo/model/DemoInfo;
    .locals 1

    new-array v0, p1, [Lcom/autonavi/navigation/api/demo/model/DemoInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/demo/model/DemoInfo$1;->a(Landroid/os/Parcel;)Lcom/autonavi/navigation/api/demo/model/DemoInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/navigation/api/demo/model/DemoInfo$1;->a(I)[Lcom/autonavi/navigation/api/demo/model/DemoInfo;

    move-result-object v0

    return-object v0
.end method
