package ${packageName}.${className?lower_case};

import android.os.Parcel;
import android.os.Parcelable;
import lombok.Getter;

@Getter
public class ${className}Bundle implements Parcelable {
  private String productName;

  @Override
  public int describeContents() {
    return 0;
  }

  @Override
  public void writeToParcel(Parcel dest, int flags) {
    dest.writeString(this.productName);
  }


  private ${className}Bundle(Parcel in) {
    this.productName = in.readString();
  }

  public static final Creator<${className}Bundle> CREATOR = new Creator<${className}Bundle>() {
    @Override
    public ${className}Bundle createFromParcel(Parcel source) {
      return new ${className}Bundle(source);
    }

    @Override
    public ${className}Bundle[] newArray(int size) {
      return new ${className}Bundle[size];
    }
  };
}