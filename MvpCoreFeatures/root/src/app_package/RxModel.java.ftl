package ${packageName}.${className?lower_case};

import lombok.Data;

@Data
class ${className}RxModel {
  private boolean isValid;
  private boolean isEmpty;
  private String value;
}